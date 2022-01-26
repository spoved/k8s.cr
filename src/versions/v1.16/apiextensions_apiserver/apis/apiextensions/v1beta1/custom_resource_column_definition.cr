# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition; end

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition
    # JSONPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
    abstract def json_path : String
    # :ditto:
    abstract def json_path! : String
    # :ditto:
    abstract def json_path? : String?
    # :ditto:
    abstract def json_path=(value : String)
    # description is a human readable description of this column.
    abstract def description : String?
    # :ditto:
    abstract def description! : String
    # :ditto:
    abstract def description? : String?
    # :ditto:
    abstract def description=(value : String?)
    # format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See [[https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.))
    abstract def format : String?
    # :ditto:
    abstract def format! : String
    # :ditto:
    abstract def format? : String?
    # :ditto:
    abstract def format=(value : String?)
    # name is a human readable name for the column.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
    abstract def priority : Int32?
    # :ditto:
    abstract def priority! : Int32
    # :ditto:
    abstract def priority? : Int32?
    # :ditto:
    abstract def priority=(value : Int32?)
    # type is an OpenAPI type definition for this column. See [[https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.))
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # CustomResourceColumnDefinition specifies a column for server side printing.
  @[::K8S::Properties(
    json_path: {key: "JSONPath", accessor: "json_path", kind: "String", nilable: false, default: nil, read_only: false, description: "JSONPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    description: {key: "description", accessor: "description", kind: "String", nilable: true, default: nil, read_only: false, description: "description is a human readable description of this column.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    format: {key: "format", accessor: "format", kind: "String", nilable: true, default: nil, read_only: false, description: "format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is a human readable name for the column.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    priority: {key: "priority", accessor: "priority", kind: "Int32", nilable: true, default: nil, read_only: false, description: "priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type is an OpenAPI type definition for this column. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition

    # JSONPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
    def json_path : String
      self.["JSONPath"].as(String)
    end

    # :ditto:
    def json_path! : String
      self.["JSONPath"].as(String).not_nil!
    end

    # :ditto:
    def json_path? : String?
      self.["JSONPath"]?.as(String?)
    end

    # :ditto:
    def json_path=(value : String)
      self.["JSONPath"] = value
    end

    # description is a human readable description of this column.
    def description : String?
      self.["description"].as(String?)
    end

    # :ditto:
    def description! : String
      self.["description"].as(String?).not_nil!
    end

    # :ditto:
    def description? : String?
      self.["description"]?.as(String?)
    end

    # :ditto:
    def description=(value : String?)
      self.["description"] = value
    end

    # format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See [[https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.))
    def format : String?
      self.["format"].as(String?)
    end

    # :ditto:
    def format! : String
      self.["format"].as(String?).not_nil!
    end

    # :ditto:
    def format? : String?
      self.["format"]?.as(String?)
    end

    # :ditto:
    def format=(value : String?)
      self.["format"] = value
    end

    # name is a human readable name for the column.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
    def priority : Int32?
      self.["priority"].as(Int32?)
    end

    # :ditto:
    def priority! : Int32
      self.["priority"].as(Int32?).not_nil!
    end

    # :ditto:
    def priority? : Int32?
      self.["priority"]?.as(Int32?)
    end

    # :ditto:
    def priority=(value : Int32?)
      self.["priority"] = value
    end

    # type is an OpenAPI type definition for this column. See [[https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.))
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "JSONPath", accessor: "json_path", nilable: false, read_only: false, default: nil, kind: String },
        { key: "description", accessor: "description", nilable: true, read_only: false, default: nil, kind: String },
        { key: "format", accessor: "format", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "priority", accessor: "priority", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
