# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EndpointPort",
  namespace: "::K8S::Api::Discovery::V1",
  properties: [

    {name: "app_protocol", kind: String, key: "appProtocol", nilable: true, read_only: false, description: "The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:\n\n* Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and [https://www.iana.org/assignments/service-names).](https://www.iana.org/assignments/service-names).)\n\n* Kubernetes-defined prefixed names:\n  * ['kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540]('kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540)\n  * ['kubernetes.io/ws'  - WebSocket over cleartext as described in https://www.rfc-editor.org/rfc/rfc6455]('kubernetes.io/ws'  - WebSocket over cleartext as described in https://www.rfc-editor.org/rfc/rfc6455)\n  * ['kubernetes.io/wss' - WebSocket over TLS as described in https://www.rfc-editor.org/rfc/rfc6455]('kubernetes.io/wss' - WebSocket over TLS as described in https://www.rfc-editor.org/rfc/rfc6455)\n\n* Other protocols should use implementation-defined prefixed names such as [mycompany.com/my-custom-protocol.](mycompany.com/my-custom-protocol.)"},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "name represents the name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string."},
    {name: "port", kind: Int32, key: "port", nilable: true, read_only: false, description: "port represents the port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP."},

  ]
)
