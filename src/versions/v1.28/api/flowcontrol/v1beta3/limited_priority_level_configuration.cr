# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./limit_response"

::K8S::Kubernetes::Resource.define_object("LimitedPriorityLevelConfiguration",
  namespace: "::K8S::Api::Flowcontrol::V1beta3",
  properties: [

    {name: "borrowing_limit_percent", kind: Int32, key: "borrowingLimitPercent", nilable: true, read_only: false, description: "`borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.\n\nBorrowingCL(i) = round( NominalCL(i) * [borrowingLimitPercent(i)/100.0 )](borrowingLimitPercent(i)/100.0 ))\n\nThe value of this field can be more than 100, implying that this priority level can borrow a number of seats that is greater than its own nominal concurrency limit (NominalCL). When this field is left `nil`, the limit is effectively infinite."},
    {name: "lendable_percent", kind: Int32, key: "lendablePercent", nilable: true, read_only: false, description: "`lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.\n\nLendableCL(i) = round( NominalCL(i) * [lendablePercent(i)/100.0 )](lendablePercent(i)/100.0 ))"},
    {name: "limit_response", kind: ::K8S::Api::Flowcontrol::V1beta3::LimitResponse, key: "limitResponse", nilable: true, read_only: false, description: "`limitResponse` indicates what to do with requests that can not be executed right now"},
    {name: "nominal_concurrency_shares", kind: Int32, key: "nominalConcurrencyShares", nilable: true, read_only: false, description: "`nominalConcurrencyShares` (NCS) contributes to the computation of the NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats available at this priority level. This is used both for requests dispatched from this priority level as well as requests dispatched from other priority levels borrowing seats from this level. The server's concurrency limit (ServerCL) is divided among the Limited priority levels in proportion to their NCS values:\n\nNominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[priority level k] NCS(k)\n\nBigger numbers mean a larger nominal concurrency limit, at the expense of every other priority level. This field has a default value of 30."},

  ]
)
