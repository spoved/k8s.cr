# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus; end

require "./custom_resource_definition_names"
require "./custom_resource_definition_condition"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus
    # AcceptedNames are the names that are actually being used to serve discovery They may be different than the names in spec.
    abstract def accepted_names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
    # :ditto:
    abstract def accepted_names! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
    # :ditto:
    abstract def accepted_names? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames?
    # :ditto:
    abstract def accepted_names=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames)
    # Conditions indicate state for particular aspects of a CustomResourceDefinition
    abstract def conditions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)
    # :ditto:
    abstract def conditions! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition))
    # StoredVersions are all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so the migration controller can first finish a migration to another version (i.e. that no old objects are left in the storage), and then remove the rest of the versions from this list. None of the versions in this list can be removed from the spec.Versions field.
    abstract def stored_versions : ::Array(String)
    # :ditto:
    abstract def stored_versions! : ::Array(String)
    # :ditto:
    abstract def stored_versions? : ::Array(String)?
    # :ditto:
    abstract def stored_versions=(value : ::Array(String))
  end

  # CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
  @[::K8S::Properties(
    accepted_names: {key: "acceptedNames", accessor: "accepted_names", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames", nilable: false, default: nil, read_only: false, description: "AcceptedNames are the names that are actually being used to serve discovery They may be different than the names in spec.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)", nilable: false, default: nil, read_only: false, description: "Conditions indicate state for particular aspects of a CustomResourceDefinition", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    stored_versions: {key: "storedVersions", accessor: "stored_versions", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "StoredVersions are all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so the migration controller can first finish a migration to another version (i.e. that no old objects are left in the storage), and then remove the rest of the versions from this list. None of the versions in this list can be removed from the spec.Versions field.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus

    # AcceptedNames are the names that are actually being used to serve discovery They may be different than the names in spec.
    def accepted_names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
      self.["acceptedNames"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames)
    end

    # :ditto:
    def accepted_names! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames
      self.["acceptedNames"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames).not_nil!
    end

    # :ditto:
    def accepted_names? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames?
      self.["acceptedNames"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames?)
    end

    # :ditto:
    def accepted_names=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames)
      self.["acceptedNames"] = value
    end

    # Conditions indicate state for particular aspects of a CustomResourceDefinition
    def conditions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)
      self.["conditions"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition))
    end

    # :ditto:
    def conditions! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)
      self.["conditions"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)?
      self.["conditions"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition))
      self.["conditions"] = value
    end

    # StoredVersions are all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so the migration controller can first finish a migration to another version (i.e. that no old objects are left in the storage), and then remove the rest of the versions from this list. None of the versions in this list can be removed from the spec.Versions field.
    def stored_versions : ::Array(String)
      self.["storedVersions"].as(::Array(String))
    end

    # :ditto:
    def stored_versions! : ::Array(String)
      self.["storedVersions"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def stored_versions? : ::Array(String)?
      self.["storedVersions"]?.as(::Array(String)?)
    end

    # :ditto:
    def stored_versions=(value : ::Array(String))
      self.["storedVersions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "acceptedNames", accessor: "accepted_names", nilable: false, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames },
        { key: "conditions", accessor: "conditions", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition) },
        { key: "storedVersions", accessor: "stored_versions", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
