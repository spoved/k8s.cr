# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TopologySpreadConstraint specifies how to spread matching pods among the given topology.
  @[::K8S::Properties(
    label_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "labelSelector", getter: false, setter: false},
    max_skew: {type: Int32, nilable: false, key: "maxSkew", getter: false, setter: false},
    topology_key: {type: String, nilable: false, key: "topologyKey", getter: false, setter: false},
    when_unsatisfiable: {type: String, nilable: false, key: "whenUnsatisfiable", getter: false, setter: false},
  )]
  class Api::Core::V1::TopologySpreadConstraint
    include ::JSON::Serializable
    include ::YAML::Serializable

    # LabelSelector is used to find matching pods. Pods that match this label selector are counted to determine the number of pods in their corresponding topology domain.
    @[::JSON::Field(key: "labelSelector", emit_null: false)]
    @[::YAML::Field(key: "labelSelector", emit_null: false)]
    property label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # MaxSkew describes the degree to which pods may be unevenly distributed. When `whenUnsatisfiable=DoNotSchedule`, it is the maximum permitted difference between the number of matching pods in the target topology and the global minimum. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as [1/1/0: | zone1 | zone2 | zone3 | |   P   |   P   |       | - if MaxSkew is 1, incoming pod can only be scheduled to zone3 to become 1/1/1; scheduling it onto zone1(zone2) would make the ActualSkew(2-0) on zone1(zone2) violate MaxSkew(1). - if MaxSkew is 2, incoming pod can be scheduled onto any zone. When `whenUnsatisfiable=ScheduleAnyway`, it is used to give higher precedence to topologies that satisfy it. It's a required field. Default value is 1 and 0 is not allowed.](1/1/0: | zone1 | zone2 | zone3 | |   P   |   P   |       | - if MaxSkew is 1, incoming pod can only be scheduled to zone3 to become 1/1/1; scheduling it onto zone1(zone2) would make the ActualSkew(2-0) on zone1(zone2) violate MaxSkew(1). - if MaxSkew is 2, incoming pod can be scheduled onto any zone. When `whenUnsatisfiable=ScheduleAnyway`, it is used to give higher precedence to topologies that satisfy it. It's a required field. Default value is 1 and 0 is not allowed.)
    @[::JSON::Field(key: "maxSkew", emit_null: true)]
    @[::YAML::Field(key: "maxSkew", emit_null: true)]
    property max_skew : Int32

    # TopologyKey is the key of node labels. Nodes that have a label with this key and identical values are considered to be in the same topology. We consider each <key, value> as a "bucket", and try to put balanced number of pods into each bucket. It's a required field.
    @[::JSON::Field(key: "topologyKey", emit_null: true)]
    @[::YAML::Field(key: "topologyKey", emit_null: true)]
    property topology_key : String

    # WhenUnsatisfiable indicates how to deal with a pod if it doesn't satisfy the spread constraint. - DoNotSchedule (default) tells the scheduler not to schedule it. - ScheduleAnyway tells the scheduler to schedule the pod in any location,
    #   but giving higher precedence to topologies that would help reduce the
    #   skew.
    # A constraint is considered "Unsatisfiable" for an incoming pod if and only if every possible node assigment for that pod would violate "MaxSkew" on some topology. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as [3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become 3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a required field.](3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become 3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a required field.)
    @[::JSON::Field(key: "whenUnsatisfiable", emit_null: true)]
    @[::YAML::Field(key: "whenUnsatisfiable", emit_null: true)]
    property when_unsatisfiable : String

    def initialize(*, @max_skew : Int32, @topology_key : String, @when_unsatisfiable : String, @label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
