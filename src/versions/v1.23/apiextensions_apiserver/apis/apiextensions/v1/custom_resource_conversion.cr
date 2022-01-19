# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion; end

require "./webhook_conversion"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion
    alias ValueType = String | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion | Nil
    alias Instance = ::K8S::Object(ValueType)

    # strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
    #   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
    abstract def strategy : String
    # :ditto:
    abstract def strategy! : String
    # :ditto:
    abstract def strategy? : String?
    # :ditto:
    abstract def strategy=(value : String)
    # webhook describes how to call the conversion webhook. Required when `strategy` is set to `Webhook`.
    abstract def webhook : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?
    # :ditto:
    abstract def webhook! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion
    # :ditto:
    abstract def webhook? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?
    # :ditto:
    abstract def webhook=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?)
  end

  # CustomResourceConversion describes how to convert different versions of a CR.
  @[::K8S::Properties(
    strategy: {key: "strategy", accessor: "strategy", kind: "String", nilable: false, default: nil, read_only: false, description: "strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information\n  is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set."},
    webhook: {key: "webhook", accessor: "webhook", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion", nilable: true, default: nil, read_only: false, description: "webhook describes how to call the conversion webhook. Required when `strategy` is set to `Webhook`."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion
    include ::K8S::Kubernetes::Object

    # strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
    #   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
    def strategy : String
      self.["strategy"].as(String)
    end

    # :ditto:
    def strategy! : String
      self.["strategy"].as(String).not_nil!
    end

    # :ditto:
    def strategy? : String?
      self.["strategy"]?.as(String?)
    end

    # :ditto:
    def strategy=(value : String)
      self.["strategy"] = value
    end

    # webhook describes how to call the conversion webhook. Required when `strategy` is set to `Webhook`.
    def webhook : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?
      self.["webhook"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?)
    end

    # :ditto:
    def webhook! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion
      self.["webhook"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?).not_nil!
    end

    # :ditto:
    def webhook? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?
      self.["webhook"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?)
    end

    # :ditto:
    def webhook=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion?)
      self.["webhook"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "strategy", accessor: "strategy", nilable: false, read_only: false, default: nil, kind: String },
        { key: "webhook", accessor: "webhook", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion },
      ])
end
  end
end
