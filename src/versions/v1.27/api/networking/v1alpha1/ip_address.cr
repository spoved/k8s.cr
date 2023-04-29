# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./ip_address_spec"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1alpha1", "IPAddress",
  namespace: "::K8S::Api::Networking::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Networking::V1alpha1::IPAddressSpec, key: "spec", nilable: true, read_only: false, description: "spec is the desired state of the IPAddress. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "IPAddress represents a single IP of a single IP Family. The object is designed to be used by APIs that operate on IP addresses. The object is used by the Service core API for allocation of IP addresses. An IP address can be represented in different formats, to guarantee the uniqueness of the IP, the name of the object is the IP address in canonical format, four decimal digits separated by dots suppressing leading zeros for IPv4 and the representation defined by RFC 5952 for IPv6. Valid: 192.168.1.5 or 2001:db8::1 or 2001:db8:aaaa:bbbb:cccc:dddd:eeee:1 Invalid: 10.01.2.3 or 2001:db8:0:0:0::1",
  versions: [{group: "networking.k8s.io", kind: "IPAddress", version: "v1alpha1"}],
)
