# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::NetworkPolicySpec; end

require "./network_policy_egress_rule"
require "./network_policy_ingress_rule"
require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Networking::V1::NetworkPolicySpec`.
  module Types::Api::Networking::V1::NetworkPolicySpec
    # List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
    abstract def egress : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?
    # :ditto:
    abstract def egress! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)
    # :ditto:
    abstract def egress? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?
    # :ditto:
    abstract def egress=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?)
    # List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
    abstract def ingress : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?
    # :ditto:
    abstract def ingress! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)
    # :ditto:
    abstract def ingress? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?
    # :ditto:
    abstract def ingress=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?)
    # Selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.
    abstract def pod_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def pod_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def pod_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def pod_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # List of rule types that the NetworkPolicy relates to. Valid options are "Ingress", "Egress", or "Ingress,Egress". If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an Egress section and would otherwise default to just [ "Ingress" ]). This field is beta-level in 1.8
    abstract def policy_types : ::Array(String)?
    # :ditto:
    abstract def policy_types! : ::Array(String)
    # :ditto:
    abstract def policy_types? : ::Array(String)?
    # :ditto:
    abstract def policy_types=(value : ::Array(String)?)
  end

  # NetworkPolicySpec provides the specification of a NetworkPolicy
  @[::K8S::Properties(
    egress: {key: "egress", accessor: "egress", kind: "::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)", nilable: true, default: nil, read_only: false, description: "List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ingress: {key: "ingress", accessor: "ingress", kind: "::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)", nilable: true, default: nil, read_only: false, description: "List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_selector: {key: "podSelector", accessor: "pod_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: false, default: nil, read_only: false, description: "Selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    policy_types: {key: "policyTypes", accessor: "policy_types", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "List of rule types that the NetworkPolicy relates to. Valid options are \"Ingress\", \"Egress\", or \"Ingress,Egress\". If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ \"Egress\" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include \"Egress\" (since such a policy would not include an Egress section and would otherwise default to just [ \"Ingress\" ]). This field is beta-level in 1.8", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::NetworkPolicySpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::NetworkPolicySpec

    # List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
    def egress : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?
      self.["egress"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?)
    end

    # :ditto:
    def egress! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)
      self.["egress"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?).not_nil!
    end

    # :ditto:
    def egress? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?
      self.["egress"]?.as(::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?)
    end

    # :ditto:
    def egress=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule)?)
      self.["egress"] = value
    end

    # List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
    def ingress : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?
      self.["ingress"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?)
    end

    # :ditto:
    def ingress! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)
      self.["ingress"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?).not_nil!
    end

    # :ditto:
    def ingress? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?
      self.["ingress"]?.as(::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?)
    end

    # :ditto:
    def ingress=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule)?)
      self.["ingress"] = value
    end

    # Selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.
    def pod_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["podSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    end

    # :ditto:
    def pod_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["podSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector).not_nil!
    end

    # :ditto:
    def pod_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["podSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def pod_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
      self.["podSelector"] = value
    end

    # List of rule types that the NetworkPolicy relates to. Valid options are "Ingress", "Egress", or "Ingress,Egress". If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an Egress section and would otherwise default to just [ "Ingress" ]). This field is beta-level in 1.8
    def policy_types : ::Array(String)?
      self.["policyTypes"].as(::Array(String)?)
    end

    # :ditto:
    def policy_types! : ::Array(String)
      self.["policyTypes"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def policy_types? : ::Array(String)?
      self.["policyTypes"]?.as(::Array(String)?)
    end

    # :ditto:
    def policy_types=(value : ::Array(String)?)
      self.["policyTypes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "egress", accessor: "egress", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule) },
        { key: "ingress", accessor: "ingress", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule) },
        { key: "podSelector", accessor: "pod_selector", nilable: false, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "policyTypes", accessor: "policy_types", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
