require "file_utils"
require "../src/k8s/version.cr"
require "./generator"
require "http/client"

struct Range
  def next
    {{@type}}.new(self.end + 1, self.end + 1 + self.end - self.begin)
  end
end

def latest_patch_for(prefix, patch_range = 0..22, last_res = nil)
  last_patch = patch_range.bsearch do |patch|
    version = "#{prefix}.#{patch}"
    file_path = File.join(".", Generator::SCHEMAS_DIR, "#{version}.json")

    if File.exists?(file_path)
      last_res = File.read(file_path)
      false
    else
      url = "https://raw.githubusercontent.com/kubernetes/kubernetes/#{version}/api/openapi-spec/swagger.json"
      res = HTTP::Client.get(url)

      case res.status_code
      when 200
        File.write(file_path, res.body)
        last_res = res.body
        false
      else
        true
      end
    end
  end

  if last_patch
    {last_res, last_patch - 1}
  else
    latest_patch_for(prefix, patch_range.next, last_res)
  end
end

def for_each_version(major = 1, minor = 11)
  loop do
    prefix = "v#{major}.#{minor}"
    last_res, patch = latest_patch_for(prefix)

    if last_res && patch
      version = "#{prefix}.#{patch}"

      yield prefix, last_res, version

      minor += 1
    else
      break
    end
  end
end

def git_commit
  `git rev-parse HEAD 2> /dev/null`.chomp
end

def get_git_tags
  `git show-ref --tags -d`.chomp.split("\n")
    .select(&.=~(/\^\{\}$/)).map do |line|
    parts = line.split(" ")
    {parts[1].gsub("refs/tags/", "").gsub("^{}", ""), parts[0]}
  end
end

def get_k8s_version
  tag = get_git_tags.find(&.[1].==(git_commit))
  if tag
    tag[0]
  else
    "master"
  end
  # K8S::VERSION
end

def generate_docs_for(prefix, version)
  puts "Generating docs for: #{prefix}"

  k8s_ver = get_k8s_version
  docs_dir = File.join(".", Generator::DOCS_DIR, k8s_ver, prefix)
  version_file = File.join(".", Generator::VERSIONS_DIR, "#{prefix}.cr")

  FileUtils.rm_rf File.join(docs_dir) if Dir.exists?(docs_dir)
  FileUtils.mkdir_p(docs_dir) unless Dir.exists?(docs_dir)

  _generate_docs(version_file, docs_dir, k8s_ver, git_commit, version)
end

def _generate_docs(version_file, docs_dir, k8s_ver, git_commit, api_ver)
  args = [
    "doc",
    version_file,
    "--project-name", "K8S.cr",
    "--output", docs_dir,
    "--project-version", k8s_ver,
    "--source-refname", git_commit,
  ]

  system "crystal", args

  File.open(File.join(docs_dir, "css", "style.css"), "a") do |f|
    f.puts "", gen_css(api_ver)
  end
end

def gen_css(version)
  <<-CSS
  html body div.sidebar div.sidebar-header div.project-summary span.project-version::after {
    content: "Api: #{version}";
    display: block;
    clear: both;
  }
  CSS
end

def generate_release_docs
  current_ref = git_commit
  get_git_tags.each do |tag|
    `git checkout #{tag[1]}`

    for_each_version do |prefix, last_res, version|
      generate_docs_for(prefix, version)
    end
  end

  `git checkout #{current_ref}`
end
