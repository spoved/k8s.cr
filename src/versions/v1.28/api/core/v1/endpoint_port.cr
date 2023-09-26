# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EndpointPort",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "app_protocol", kind: String, key: "appProtocol", nilable: true, read_only: false, description: "The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:\n\n* Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and [https://www.iana.org/assignments/service-names).](https://www.iana.org/assignments/service-names).)\n\n* Kubernetes-defined prefixed names:\n  * ['kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540]('kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540)\n  * ['kubernetes.io/ws'  - WebSocket over cleartext as described in https://www.rfc-editor.org/rfc/rfc6455]('kubernetes.io/ws'  - WebSocket over cleartext as described in https://www.rfc-editor.org/rfc/rfc6455)\n  * ['kubernetes.io/wss' - WebSocket over TLS as described in https://www.rfc-editor.org/rfc/rfc6455]('kubernetes.io/wss' - WebSocket over TLS as described in https://www.rfc-editor.org/rfc/rfc6455)\n\n* Other protocols should use implementation-defined prefixed names such as [mycompany.com/my-custom-protocol.](mycompany.com/my-custom-protocol.)"},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined."},
    {name: "port", kind: Int32, key: "port", nilable: false, read_only: false, description: "The port number of the endpoint."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP."},

  ]
)
