# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
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
    raw: {type: String, nilable: false, key: "Raw", getter: false, setter: false},
  )]
  class Apimachinery::Runtime::RawExtension
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Raw is the underlying serialization of this object.
    @[::JSON::Field(key: "Raw", emit_null: true)]
    @[::YAML::Field(key: "Raw", emit_null: true)]
    property raw : String

    def initialize(*, @raw : String)
    end
  end
end
