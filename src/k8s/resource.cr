require "./object"
require "./util"

abstract struct K8S::Kubernetes::Resource < K8S::Kubernetes::Object; end

require "./resource/definitions"
require "./resource/*"

abstract struct K8S::Kubernetes::Resource < K8S::Kubernetes::Object
  define_prop api_version : String, key: "apiVersion", nilable: false, read_only: true, description: %q<APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))>
  define_prop kind : String, nilable: false, read_only: true, description: %q<Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))>

  def self.new(pull : ::JSON::PullParser)
    obj = K8S::Internals::GenericObject.new(pull)
    new_resource(obj)
  end

  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    obj = K8S::Internals::GenericObject.new(ctx, node)
    new_resource(obj)
  end

  def self.new(obj : K8S::GenericObject)
    new_resource(obj.@__object__)
  end

  def self.new_resource(obj : K8S::Internals::GenericObject)
    K8S::Util.new_resource(obj)
  end

  def self.from_file(file)
    Log.trace { "K8S::Kubernetes::Resource: Loading: #{file}" }
    if File.extname(file) == ".json"
      [from_json(File.read(file))]
    else
      nodes = ::K8S::Util::YAMLParser.new(File.read(file), &.parse_all_nodes)
      nodes.flat_map { |doc| doc.nodes.map { |n| ::K8S::Kubernetes::Resource.new(YAML::ParseContext.new, n) } }
    end
  end

  def self.from_files(*paths)
    paths.flat_map do |path|
      Log.trace { "K8S::Kubernetes::Resource: Loading recursivly: #{path}" }
      if File.directory?(path)
        Dir.glob(File.join(path, "**/*.yaml")).flat_map { |file| from_files(file) }
      elsif File.extname(path) == ".yaml" && File.exists?(path)
        from_file(path)
      else
        Array(Resource).new
      end
    end
  end

  def self.group : String
    raise "#{self.class}: group is not defined"
  end

  def self.api_version : String
    raise "#{self.class}: api_version is not defined"
  end

  def self.kind : String
    raise "#{self.class}: kind is not defined"
  end
end

abstract struct K8S::Kubernetes::Resource::Object < K8S::Kubernetes::Resource
  define_prop metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, %q<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>
end

abstract struct K8S::Kubernetes::Resource::List(T) < K8S::Kubernetes::Resource
  define_prop metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta, true, false, %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>
  define_prop items : ListWrapper(T) = ListWrapper(T).new, false, false, %q<Items is a list of `#{T}`.>

  def <<(value : T)
    self.items << value
  end
end

struct K8S::Kubernetes::Resource::Generic < K8S::Kubernetes::Resource
  def _init_validate!
    raise K8S::Kubernetes::Resource::Error.new "apiVersion must be defined" if @__object__["apiVersion"]?.nil?
    raise K8S::Kubernetes::Resource::Error.new "kind must be defined" if @__object__["kind"]?.nil?
  end

  def self.new(pull : ::JSON::PullParser)
    obj = K8S::Internals::GenericObject.new(pull)
    new(obj)
  end

  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    obj = K8S::Internals::GenericObject.new(ctx, node)
    new(obj)
  end
end

struct K8S::Api::Core::V1::List < K8S::Kubernetes::Resource::List(K8S::Kubernetes::Resource::Generic)
  def self.group : String
    ""
  end

  def self.api_version : String
    "v1"
  end

  def self.kind : String
    "List"
  end
end
