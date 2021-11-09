# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
  #  * How are requests for this priority level limited?
  #  * What should be done with requests that exceed the limit?
  class Api::Flowcontrol::V1alpha1::LimitedPriorityLevelConfiguration
    # `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
    #
    #             ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )
    #
    # bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
    property assured_concurrency_shares : Int32 | Nil

    # `limitResponse` indicates what to do with requests that can not be executed right now
    property limit_response : Api::Flowcontrol::V1alpha1::LimitResponse | Nil

    ::YAML.mapping({
      assured_concurrency_shares: {type: Int32, nilable: true, key: "assuredConcurrencyShares", getter: false, setter: false},
      limit_response:             {type: Api::Flowcontrol::V1alpha1::LimitResponse, nilable: true, key: "limitResponse", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      assured_concurrency_shares: {type: Int32, nilable: true, key: "assuredConcurrencyShares", getter: false, setter: false},
      limit_response:             {type: Api::Flowcontrol::V1alpha1::LimitResponse, nilable: true, key: "limitResponse", getter: false, setter: false},
    }, true)

    def initialize(*, @assured_concurrency_shares : Int32 | Nil = nil, @limit_response : Api::Flowcontrol::V1alpha1::LimitResponse | Nil = nil)
    end
  end
end
