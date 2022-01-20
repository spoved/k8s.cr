# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta2::HPAScalingRules; end

require "./hpa_scaling_policy"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta2::HPAScalingRules`.
  module Types::Api::Autoscaling::V2beta2::HPAScalingRules
    alias ValueType = ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy) | String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
    abstract def policies : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?
    # :ditto:
    abstract def policies! : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)
    # :ditto:
    abstract def policies? : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?
    # :ditto:
    abstract def policies=(value : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?)
    # selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.
    abstract def select_policy : String?
    # :ditto:
    abstract def select_policy! : String
    # :ditto:
    abstract def select_policy? : String?
    # :ditto:
    abstract def select_policy=(value : String?)
    # StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
    abstract def stabilization_window_seconds : Int32?
    # :ditto:
    abstract def stabilization_window_seconds! : Int32
    # :ditto:
    abstract def stabilization_window_seconds? : Int32?
    # :ditto:
    abstract def stabilization_window_seconds=(value : Int32?)
  end

  # HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
  @[::K8S::Properties(
    policies: {key: "policies", accessor: "policies", kind: "::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)", nilable: true, default: nil, read_only: false, description: "policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    select_policy: {key: "selectPolicy", accessor: "select_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    stabilization_window_seconds: {key: "stabilizationWindowSeconds", accessor: "stabilization_window_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta2::HPAScalingRules < ::K8S::Types::Api::Autoscaling::V2beta2::HPAScalingRules::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta2::HPAScalingRules
    include ::K8S::Kubernetes::Object

    # policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
    def policies : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?
      self.["policies"].as(::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?)
    end

    # :ditto:
    def policies! : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)
      self.["policies"].as(::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?).not_nil!
    end

    # :ditto:
    def policies? : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?
      self.["policies"]?.as(::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?)
    end

    # :ditto:
    def policies=(value : ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy)?)
      self.["policies"] = value
    end

    # selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.
    def select_policy : String?
      self.["selectPolicy"].as(String?)
    end

    # :ditto:
    def select_policy! : String
      self.["selectPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def select_policy? : String?
      self.["selectPolicy"]?.as(String?)
    end

    # :ditto:
    def select_policy=(value : String?)
      self.["selectPolicy"] = value
    end

    # StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
    def stabilization_window_seconds : Int32?
      self.["stabilizationWindowSeconds"].as(Int32?)
    end

    # :ditto:
    def stabilization_window_seconds! : Int32
      self.["stabilizationWindowSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def stabilization_window_seconds? : Int32?
      self.["stabilizationWindowSeconds"]?.as(Int32?)
    end

    # :ditto:
    def stabilization_window_seconds=(value : Int32?)
      self.["stabilizationWindowSeconds"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "policies", accessor: "policies", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy) },
        { key: "selectPolicy", accessor: "select_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "stabilizationWindowSeconds", accessor: "stabilization_window_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
