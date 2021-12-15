require "file_utils"
require "./generator"
require "http/client"

struct Range
  def next
    {{@type}}.new(self.end + 1, self.end + 1 + self.end - self.begin)
  end
end

def latest_patch_for(prefix, patch_range = 0..22, last_res = nil)
  FileUtils.mkdir_p(File.join(".", Generator::SCHEMAS_DIR)) unless Dir.exists?(File.join(".", Generator::SCHEMAS_DIR))

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

def crystalize_name(name : String)
  name.gsub(/JSON/, "Json").gsub(/UUID/, "Uuid").gsub(/APIV3/, "Apiv3")
    .gsub(/CIDR/, "Cidr").gsub(/CPU/, "Cpu").gsub(/CSI/, "Csi").gsub(/TLS/, "Tls")
    .gsub(/[A-Z]{2,3}/, &.capitalize).underscore.lchop("_").lchop("$")
    .gsub('-', '_')
end
