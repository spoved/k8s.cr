# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class Api::Admissionregistration::V1::ServiceReference
    # `name` is the name of the service. Required
    property name : String

    # `namespace` is the namespace of the service. Required
    property namespace : String

    # `path` is an optional URL path which will be sent in any request to this service.
    property path : String | Nil

    # If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
    property port : Int32 | Nil

    ::YAML.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
      port:      {type: Int32, nilable: true, key: "port", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
      port:      {type: Int32, nilable: true, key: "port", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @namespace : String, @path : String | Nil = nil, @port : Int32 | Nil = nil)
    end
  end
end
