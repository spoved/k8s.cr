#!/usr/bin/env crystal
require "./helper"

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
    tag[0].lchop('v')
  else
    "master"
  end
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
  # Generate for master
  generate_release_docs_for("master", git_commit)
  docs = ["master"]

  current_ref = git_commit
  get_git_tags.each do |tag|
    docs << tag[0].lchop('v')
    generate_release_docs_for(tag[0].lchop('v'), tag[1])
  end

  `git checkout #{current_ref}`
  generate_version_list(File.join(".", Generator::DOCS_DIR), docs)
end

def generate_release_docs_for(tag, commit)
  `git checkout #{commit}`

  versions = [] of String
  for_each_version do |prefix, _, version|
    generate_docs_for(prefix, version)
    versions << "#{tag}/#{prefix}"
  end
  docs_dir = File.join(".", Generator::DOCS_DIR, tag)
  generate_version_list(docs_dir, versions)
end

def generate_version_list(docs_dir, docs)
  index = File.join(docs_dir, "index.html")
  File.open(index, "w") do |f|
    f.puts gen_index(docs)
  end
end

def gen_index(docs)
  String::Builder.new do |b|
    b.puts <<-HTML
        <!DOCTYPE html>
        <html lang="en">
        <div class="main-content">
        <ul>
        HTML
    docs.each do |doc|
      b.puts "<li><a href=\"#{doc}/index.html\">#{doc}</a></li>"
    end
    b.puts <<-HTML
    </ul>
    </div>
    HTML
  end
end

generate_release_docs
