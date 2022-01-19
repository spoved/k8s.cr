# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::SELinuxStrategyOptions; end

require "../../core/v1/se_linux_options"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::SELinuxStrategyOptions`.
  module Types::Api::Extensions::V1beta1::SELinuxStrategyOptions
    alias ValueType = String | ::K8S::Api::Core::V1::SELinuxOptions | Nil
    alias Instance = ::K8S::Object(ValueType)

    # rule is the strategy that will dictate the allowable labels that may be set.
    abstract def rule : String
    # :ditto:
    abstract def rule! : String
    # :ditto:
    abstract def rule? : String?
    # :ditto:
    abstract def rule=(value : String)
    # seLinuxOptions required to run as; required for MustRunAs More info: [[https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/))
    abstract def se_linux_options : ::K8S::Api::Core::V1::SELinuxOptions?
    # :ditto:
    abstract def se_linux_options! : ::K8S::Api::Core::V1::SELinuxOptions
    # :ditto:
    abstract def se_linux_options? : ::K8S::Api::Core::V1::SELinuxOptions?
    # :ditto:
    abstract def se_linux_options=(value : ::K8S::Api::Core::V1::SELinuxOptions?)
  end

  # SELinuxStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use SELinuxStrategyOptions from policy API Group instead.
  @[::K8S::Properties(
    rule: {key: "rule", accessor: "rule", kind: "String", nilable: false, default: nil, read_only: false, description: "rule is the strategy that will dictate the allowable labels that may be set."},
    se_linux_options: {key: "seLinuxOptions", accessor: "se_linux_options", kind: "::K8S::Api::Core::V1::SELinuxOptions", nilable: true, default: nil, read_only: false, description: "seLinuxOptions required to run as; required for MustRunAs More info: [https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)"},
  )]
  class Api::Extensions::V1beta1::SELinuxStrategyOptions < ::K8S::Types::Api::Extensions::V1beta1::SELinuxStrategyOptions::Instance
    include ::K8S::Types::Api::Extensions::V1beta1::SELinuxStrategyOptions
    include ::K8S::Kubernetes::Object

    # rule is the strategy that will dictate the allowable labels that may be set.
    def rule : String
      self.["rule"].as(String)
    end

    # :ditto:
    def rule! : String
      self.["rule"].as(String).not_nil!
    end

    # :ditto:
    def rule? : String?
      self.["rule"]?.as(String?)
    end

    # :ditto:
    def rule=(value : String)
      self.["rule"] = value
    end

    # seLinuxOptions required to run as; required for MustRunAs More info: [[https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/))
    def se_linux_options : ::K8S::Api::Core::V1::SELinuxOptions?
      self.["seLinuxOptions"].as(::K8S::Api::Core::V1::SELinuxOptions?)
    end

    # :ditto:
    def se_linux_options! : ::K8S::Api::Core::V1::SELinuxOptions
      self.["seLinuxOptions"].as(::K8S::Api::Core::V1::SELinuxOptions?).not_nil!
    end

    # :ditto:
    def se_linux_options? : ::K8S::Api::Core::V1::SELinuxOptions?
      self.["seLinuxOptions"]?.as(::K8S::Api::Core::V1::SELinuxOptions?)
    end

    # :ditto:
    def se_linux_options=(value : ::K8S::Api::Core::V1::SELinuxOptions?)
      self.["seLinuxOptions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "rule", accessor: "rule", nilable: false, read_only: false, default: nil, kind: String },
        { key: "seLinuxOptions", accessor: "se_linux_options", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SELinuxOptions },
      ])
end
  end
end
