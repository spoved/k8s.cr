# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::LimitedPriorityLevelConfiguration; end

require "./limit_response"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::LimitedPriorityLevelConfiguration`.
  module Types::Api::Flowcontrol::V1alpha1::LimitedPriorityLevelConfiguration
    # `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
    #
    #             ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )
    #
    # bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
    abstract def assured_concurrency_shares : Int32?
    # :ditto:
    abstract def assured_concurrency_shares! : Int32
    # :ditto:
    abstract def assured_concurrency_shares? : Int32?
    # :ditto:
    abstract def assured_concurrency_shares=(value : Int32?)
    # `limitResponse` indicates what to do with requests that can not be executed right now
    abstract def limit_response : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?
    # :ditto:
    abstract def limit_response! : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse
    # :ditto:
    abstract def limit_response? : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?
    # :ditto:
    abstract def limit_response=(value : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?)
  end

  # LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
  #  * How are requests for this priority level limited?
  #  * What should be done with requests that exceed the limit?
  @[::K8S::Properties(
    assured_concurrency_shares: {key: "assuredConcurrencyShares", accessor: "assured_concurrency_shares", kind: "Int32", nilable: true, default: nil, read_only: false, description: "`assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:\n\n            ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )\n\nbigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    limit_response: {key: "limitResponse", accessor: "limit_response", kind: "::K8S::Api::Flowcontrol::V1alpha1::LimitResponse", nilable: true, default: nil, read_only: false, description: "`limitResponse` indicates what to do with requests that can not be executed right now", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::LimitedPriorityLevelConfiguration < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::LimitedPriorityLevelConfiguration

    # `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
    #
    #             ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )
    #
    # bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
    def assured_concurrency_shares : Int32?
      self.["assuredConcurrencyShares"].as(Int32?)
    end

    # :ditto:
    def assured_concurrency_shares! : Int32
      self.["assuredConcurrencyShares"].as(Int32?).not_nil!
    end

    # :ditto:
    def assured_concurrency_shares? : Int32?
      self.["assuredConcurrencyShares"]?.as(Int32?)
    end

    # :ditto:
    def assured_concurrency_shares=(value : Int32?)
      self.["assuredConcurrencyShares"] = value
    end

    # `limitResponse` indicates what to do with requests that can not be executed right now
    def limit_response : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?
      self.["limitResponse"].as(::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?)
    end

    # :ditto:
    def limit_response! : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse
      self.["limitResponse"].as(::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?).not_nil!
    end

    # :ditto:
    def limit_response? : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?
      self.["limitResponse"]?.as(::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?)
    end

    # :ditto:
    def limit_response=(value : ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse?)
      self.["limitResponse"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "assuredConcurrencyShares", accessor: "assured_concurrency_shares", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "limitResponse", accessor: "limit_response", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1alpha1::LimitResponse },
      ])
end
  end
end
