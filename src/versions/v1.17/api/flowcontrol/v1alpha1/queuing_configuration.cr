# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::QueuingConfiguration; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::QueuingConfiguration`.
  module Types::Api::Flowcontrol::V1alpha1::QueuingConfiguration
    # `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
    abstract def hand_size : Int32?
    # :ditto:
    abstract def hand_size! : Int32
    # :ditto:
    abstract def hand_size? : Int32?
    # :ditto:
    abstract def hand_size=(value : Int32?)
    # `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
    abstract def queue_length_limit : Int32?
    # :ditto:
    abstract def queue_length_limit! : Int32
    # :ditto:
    abstract def queue_length_limit? : Int32?
    # :ditto:
    abstract def queue_length_limit=(value : Int32?)
    # `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
    abstract def queues : Int32?
    # :ditto:
    abstract def queues! : Int32
    # :ditto:
    abstract def queues? : Int32?
    # :ditto:
    abstract def queues=(value : Int32?)
  end

  # QueuingConfiguration holds the configuration parameters for queuing
  @[::K8S::Properties(
    hand_size: {key: "handSize", accessor: "hand_size", kind: "Int32", nilable: true, default: nil, read_only: false, description: "`handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    queue_length_limit: {key: "queueLengthLimit", accessor: "queue_length_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "`queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    queues: {key: "queues", accessor: "queues", kind: "Int32", nilable: true, default: nil, read_only: false, description: "`queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::QueuingConfiguration < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::QueuingConfiguration

    # `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
    def hand_size : Int32?
      self.["handSize"].as(Int32?)
    end

    # :ditto:
    def hand_size! : Int32
      self.["handSize"].as(Int32?).not_nil!
    end

    # :ditto:
    def hand_size? : Int32?
      self.["handSize"]?.as(Int32?)
    end

    # :ditto:
    def hand_size=(value : Int32?)
      self.["handSize"] = value
    end

    # `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
    def queue_length_limit : Int32?
      self.["queueLengthLimit"].as(Int32?)
    end

    # :ditto:
    def queue_length_limit! : Int32
      self.["queueLengthLimit"].as(Int32?).not_nil!
    end

    # :ditto:
    def queue_length_limit? : Int32?
      self.["queueLengthLimit"]?.as(Int32?)
    end

    # :ditto:
    def queue_length_limit=(value : Int32?)
      self.["queueLengthLimit"] = value
    end

    # `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
    def queues : Int32?
      self.["queues"].as(Int32?)
    end

    # :ditto:
    def queues! : Int32
      self.["queues"].as(Int32?).not_nil!
    end

    # :ditto:
    def queues? : Int32?
      self.["queues"]?.as(Int32?)
    end

    # :ditto:
    def queues=(value : Int32?)
      self.["queues"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "handSize", accessor: "hand_size", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "queueLengthLimit", accessor: "queue_length_limit", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "queues", accessor: "queues", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
