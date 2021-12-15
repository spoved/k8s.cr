class K8S::CRD::Generator
  getter parsers : Array(K8S::CRD::Parser)
  getter output_dir : String

  def initialize(files, @output_dir)
    FileUtils.mkdir_p(@output_dir) unless Dir.exists?(@output_dir)

    @parsers = K8S::Resource.from_files(files).map do |crd|
      if crd.is_a?(K8S::Resources::Apiextensions::V1::CustomResourceDefinition)
        K8S::CRD::Parser.new(crd)
      else
        nil
      end
    end.select(K8S::CRD::Parser)
  end

  def generate
    swagger = Swagger.new
    parsers.flat_map(&.parse).each do |info|
      raise "Definition already exists: #{info[:full]}" if swagger.definitions[info[:full]]?
      swagger.definitions[info[:full]] = info[:definition]
      info[:paths].each do |path, methods|
        raise "Path already exists: #{path}" if swagger.paths[path]?
        swagger.paths[path] = methods
      end
    end
    swagger
  end
end
