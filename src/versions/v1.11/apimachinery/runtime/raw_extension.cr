# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Runtime::RawExtension; end

module K8S
  # Namespace holding the types for `Apimachinery::Runtime::RawExtension`.
  module Types::Apimachinery::Runtime::RawExtension
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Raw is the underlying serialization of this object.
    abstract def raw : String
    # :ditto:
    abstract def raw! : String
    # :ditto:
    abstract def raw? : String?
    # :ditto:
    abstract def raw=(value : String)
  end

  # RawExtension is used to hold extensions in external versions.
  #
  # To use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.
  #
  # // Internal package: type MyAPIObject struct {
  # 	runtime.TypeMeta `json:",inline"`
  # 	MyPlugin runtime.Object `json:"myPlugin"`
  # } type PluginA struct {
  # 	AOption string `json:"aOption"`
  # }
  #
  # // External package: type MyAPIObject struct {
  # 	runtime.TypeMeta `json:",inline"`
  # 	MyPlugin runtime.RawExtension `json:"myPlugin"`
  # } type PluginA struct {
  # 	AOption string `json:"aOption"`
  # }
  #
  # // On the wire, the JSON will look something like this: {
  # 	"kind":"MyAPIObject",
  # 	"apiVersion":"v1",
  # 	"myPlugin": {
  # 		"kind":"PluginA",
  # 		"aOption":"foo",
  # 	},
  # }
  #
  # So what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using [pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)](pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.))
  @[::K8S::Properties(
    raw: {key: "Raw", accessor: "raw", kind: "String", nilable: false, default: nil, read_only: false, description: "Raw is the underlying serialization of this object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Runtime::RawExtension < ::K8S::Types::Apimachinery::Runtime::RawExtension::Instance
    include ::K8S::Types::Apimachinery::Runtime::RawExtension
    include ::K8S::Kubernetes::Object

    # Raw is the underlying serialization of this object.
    def raw : String
      self.["Raw"].as(String)
    end

    # :ditto:
    def raw! : String
      self.["Raw"].as(String).not_nil!
    end

    # :ditto:
    def raw? : String?
      self.["Raw"]?.as(String?)
    end

    # :ditto:
    def raw=(value : String)
      self.["Raw"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "Raw", accessor: "raw", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
