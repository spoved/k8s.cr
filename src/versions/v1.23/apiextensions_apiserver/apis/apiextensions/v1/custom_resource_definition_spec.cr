# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec; end

require "./custom_resource_conversion"
require "./custom_resource_definition_names"
require "./custom_resource_definition_version"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
    alias ValueType = ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion | String | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames | ::Bool | ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # conversion defines conversion settings for the CRD.
    abstract def conversion : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?
    # :ditto:
    abstract def conversion! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion
    # :ditto:
    abstract def conversion? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?
    # :ditto:
    abstract def conversion=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?)
    # group is the API group of the defined custom resource. The custom resources are served under [[`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)]([`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).))
    abstract def group : String
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String)
    # names specify the resource and kind names for the custom resource.
    abstract def names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
    # :ditto:
    abstract def names! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
    # :ditto:
    abstract def names? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames?
    # :ditto:
    abstract def names=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames)
    # preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See [[https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.))
    abstract def preserve_unknown_fields : ::Bool?
    # :ditto:
    abstract def preserve_unknown_fields! : ::Bool
    # :ditto:
    abstract def preserve_unknown_fields? : ::Bool?
    # :ditto:
    abstract def preserve_unknown_fields=(value : ::Bool?)
    # scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
    abstract def scope : String
    # :ditto:
    abstract def scope! : String
    # :ditto:
    abstract def scope? : String?
    # :ditto:
    abstract def scope=(value : String)
    # versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    abstract def versions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)
    # :ditto:
    abstract def versions! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)
    # :ditto:
    abstract def versions? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)?
    # :ditto:
    abstract def versions=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion))
  end

  # CustomResourceDefinitionSpec describes how a user wants their resource to appear
  @[::K8S::Properties(
    conversion: {key: "conversion", accessor: "conversion", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion", nilable: true, default: nil, read_only: false, description: "conversion defines conversion settings for the CRD."},
    group: {key: "group", accessor: "group", kind: "String", nilable: false, default: nil, read_only: false, description: "group is the API group of the defined custom resource. The custom resources are served under [`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)"},
    names: {key: "names", accessor: "names", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames", nilable: false, default: nil, read_only: false, description: "names specify the resource and kind names for the custom resource."},
    preserve_unknown_fields: {key: "preserveUnknownFields", accessor: "preserve_unknown_fields", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)"},
    scope: {key: "scope", accessor: "scope", kind: "String", nilable: false, default: nil, read_only: false, description: "scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`."},
    versions: {key: "versions", accessor: "versions", kind: "::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)", nilable: false, default: nil, read_only: false, description: "versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
    include ::K8S::Kubernetes::Object

    # conversion defines conversion settings for the CRD.
    def conversion : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?
      self.["conversion"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?)
    end

    # :ditto:
    def conversion! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion
      self.["conversion"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?).not_nil!
    end

    # :ditto:
    def conversion? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?
      self.["conversion"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?)
    end

    # :ditto:
    def conversion=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion?)
      self.["conversion"] = value
    end

    # group is the API group of the defined custom resource. The custom resources are served under [[`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).)]([`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).](`/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).))
    def group : String
      self.["group"].as(String)
    end

    # :ditto:
    def group! : String
      self.["group"].as(String).not_nil!
    end

    # :ditto:
    def group? : String?
      self.["group"]?.as(String?)
    end

    # :ditto:
    def group=(value : String)
      self.["group"] = value
    end

    # names specify the resource and kind names for the custom resource.
    def names : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
      self.["names"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames)
    end

    # :ditto:
    def names! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames
      self.["names"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames).not_nil!
    end

    # :ditto:
    def names? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames?
      self.["names"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames?)
    end

    # :ditto:
    def names=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames)
      self.["names"] = value
    end

    # preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See [[https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.)](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.))
    def preserve_unknown_fields : ::Bool?
      self.["preserveUnknownFields"].as(::Bool?)
    end

    # :ditto:
    def preserve_unknown_fields! : ::Bool
      self.["preserveUnknownFields"].as(::Bool?).not_nil!
    end

    # :ditto:
    def preserve_unknown_fields? : ::Bool?
      self.["preserveUnknownFields"]?.as(::Bool?)
    end

    # :ditto:
    def preserve_unknown_fields=(value : ::Bool?)
      self.["preserveUnknownFields"] = value
    end

    # scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
    def scope : String
      self.["scope"].as(String)
    end

    # :ditto:
    def scope! : String
      self.["scope"].as(String).not_nil!
    end

    # :ditto:
    def scope? : String?
      self.["scope"]?.as(String?)
    end

    # :ditto:
    def scope=(value : String)
      self.["scope"] = value
    end

    # versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    def versions : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)
      self.["versions"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion))
    end

    # :ditto:
    def versions! : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)
      self.["versions"].as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)).not_nil!
    end

    # :ditto:
    def versions? : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)?
      self.["versions"]?.as(::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion)?)
    end

    # :ditto:
    def versions=(value : ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion))
      self.["versions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conversion", accessor: "conversion", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion },
        { key: "group", accessor: "group", nilable: false, read_only: false, default: nil, kind: String },
        { key: "names", accessor: "names", nilable: false, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames },
        { key: "preserveUnknownFields", accessor: "preserve_unknown_fields", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "scope", accessor: "scope", nilable: false, read_only: false, default: nil, kind: String },
        { key: "versions", accessor: "versions", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion) },
      ])
end
  end
end
