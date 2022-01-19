# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Admissionregistration::V1alpha1::Rule; end

module K8S
  # Namespace holding the types for `Api::Admissionregistration::V1alpha1::Rule`.
  module Types::Api::Admissionregistration::V1alpha1::Rule
    alias ValueType = ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
    abstract def api_groups : ::Array(String)?
    # :ditto:
    abstract def api_groups! : ::Array(String)
    # :ditto:
    abstract def api_groups? : ::Array(String)?
    # :ditto:
    abstract def api_groups=(value : ::Array(String)?)
    # APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
    abstract def api_versions : ::Array(String)?
    # :ditto:
    abstract def api_versions! : ::Array(String)
    # :ditto:
    abstract def api_versions? : ::Array(String)?
    # :ditto:
    abstract def api_versions=(value : ::Array(String)?)
    # Resources is a list of resources this rule applies to.
    #
    # For example: 'pods' means pods. [['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)](['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.))
    #
    # If wildcard is present, the validation rule will ensure resources do not overlap with each other.
    #
    # Depending on the enclosing object, subresources might not be allowed. Required.
    abstract def resources : ::Array(String)?
    # :ditto:
    abstract def resources! : ::Array(String)
    # :ditto:
    abstract def resources? : ::Array(String)?
    # :ditto:
    abstract def resources=(value : ::Array(String)?)
  end

  # Rule is a tuple of APIGroups, APIVersion, and Resources.It is recommended to make sure that all the tuple expansions are valid.
  @[::K8S::Properties(
    api_groups: {key: "apiGroups", accessor: "api_groups", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required."},
    api_versions: {key: "apiVersions", accessor: "api_versions", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required."},
    resources: {key: "resources", accessor: "resources", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Resources is a list of resources this rule applies to.\n\nFor example: 'pods' means pods. ['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)\n\nIf wildcard is present, the validation rule will ensure resources do not overlap with each other.\n\nDepending on the enclosing object, subresources might not be allowed. Required."},
  )]
  class Api::Admissionregistration::V1alpha1::Rule < ::K8S::Types::Api::Admissionregistration::V1alpha1::Rule::Instance
    include ::K8S::Types::Api::Admissionregistration::V1alpha1::Rule
    include ::K8S::Kubernetes::Object

    # APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
    def api_groups : ::Array(String)?
      self.["apiGroups"].as(::Array(String)?)
    end

    # :ditto:
    def api_groups! : ::Array(String)
      self.["apiGroups"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def api_groups? : ::Array(String)?
      self.["apiGroups"]?.as(::Array(String)?)
    end

    # :ditto:
    def api_groups=(value : ::Array(String)?)
      self.["apiGroups"] = value
    end

    # APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
    def api_versions : ::Array(String)?
      self.["apiVersions"].as(::Array(String)?)
    end

    # :ditto:
    def api_versions! : ::Array(String)
      self.["apiVersions"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def api_versions? : ::Array(String)?
      self.["apiVersions"]?.as(::Array(String)?)
    end

    # :ditto:
    def api_versions=(value : ::Array(String)?)
      self.["apiVersions"] = value
    end

    # Resources is a list of resources this rule applies to.
    #
    # For example: 'pods' means pods. [['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)](['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.))
    #
    # If wildcard is present, the validation rule will ensure resources do not overlap with each other.
    #
    # Depending on the enclosing object, subresources might not be allowed. Required.
    def resources : ::Array(String)?
      self.["resources"].as(::Array(String)?)
    end

    # :ditto:
    def resources! : ::Array(String)
      self.["resources"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def resources? : ::Array(String)?
      self.["resources"]?.as(::Array(String)?)
    end

    # :ditto:
    def resources=(value : ::Array(String)?)
      self.["resources"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiGroups", accessor: "api_groups", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "apiVersions", accessor: "api_versions", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
