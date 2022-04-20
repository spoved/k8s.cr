# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EndpointPort",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "app_protocol", kind: String, key: "appProtocol", nilable: true, read_only: false, description: "The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.)"},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined."},
    {name: "port", kind: Int32, key: "port", nilable: false, read_only: false, description: "The port number of the endpoint."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.\n\nPossible enum values:\n - `\"SCTP\"` is the SCTP protocol.\n - `\"TCP\"` is the TCP protocol.\n - `\"UDP\"` is the UDP protocol."},

  ]
)
