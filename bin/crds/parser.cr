require "./version"

class K8S::CRD::Parser
  getter crd_def : K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition
  @versions : Array(K8S::CRD::Version)? = nil

  LIST_PARAMS = Array(Swagger::Path::Parameter).from_json(
    <<-'JSON'
    [
      {
        "uniqueItems": true,
        "type": "string",
        "description": "The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.",
        "name": "continue",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "string",
        "description": "A selector to restrict the list of returned objects by their fields. Defaults to everything.",
        "name": "fieldSelector",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "boolean",
        "description": "If true, partially initialized resources are included in the response.",
        "name": "includeUninitialized",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "string",
        "description": "A selector to restrict the list of returned objects by their labels. Defaults to everything.",
        "name": "labelSelector",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "integer",
        "description": "limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.\n\nThe server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.",
        "name": "limit",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "string",
        "description": "If 'true', then the output is pretty printed.",
        "name": "pretty",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "string",
        "description": "When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.",
        "name": "resourceVersion",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "integer",
        "description": "Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.",
        "name": "timeoutSeconds",
        "in": "query"
      },
      {
        "uniqueItems": true,
        "type": "boolean",
        "description": "Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.",
        "name": "watch",
        "in": "query"
      }
    ]
    JSON
  )

  NS_PARAMS = Array(Swagger::Path::Parameter).from_json(
    <<-'JSON'
    [
      {
        "uniqueItems": true,
        "type": "string",
        "description": "object name and auth scope, such as for teams and projects",
        "name": "namespace",
        "in": "path",
        "required": true
      },
      {
        "uniqueItems": true,
        "type": "string",
        "description": "If 'true', then the output is pretty printed.",
        "name": "pretty",
        "in": "query"
      }
    ]
    JSON
  )

  def initialize(@crd_def); end

  def parse
    Log.info { "Parsing CRD #{spec.group!} with #{versions.size} versions" }
    versions.map do |v|
      defs = v.to_swagger_defs
      {
        group:       v.group,
        kind:        v.kind,
        version:     v.version,
        full:        v.full_api,
        definition:  defs[v.full_api],
        definitions: defs,
        paths:       paths(v),
      }
    end
  end

  private def spec : K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec
    @crd_def.spec.not_nil!
  end

  def group_info
    {
      group: spec.group!,
      kind:  spec.names!.kind!,
    }
  end

  def versions
    @versions ||= spec.versions!.map { |v| K8S::CRD::Version.new(**group_info, definition: v) }
  end

  private def paths(ver : K8S::CRD::Version)
    {
      "/apis/#{ver.api_base}/#{ver.version}/#{spec.names!.plural}"                        => list_path(ver),
      "/apis/#{ver.api_base}/#{ver.version}/namespaces/{namespace}/#{spec.names!.plural}" => Swagger::Path.new(
        get: get_action(ver),
        post: post_action(ver),
        delete: delete_action(ver),
        parameters: NS_PARAMS,
      ),
      "/apis/#{ver.api_base}/#{ver.version}/namespaces/{namespace}/#{spec.names!.plural}/{name}" => Swagger::Path.new(
        get: get_single_action(ver),
        put: put_single_action(ver),
        delete: delete_single_action(ver),
        patch: patch_single_action(ver),
        parameters: Array(Swagger::Path::Parameter).from_json(
          <<-JSON
            [
              {
                "uniqueItems": true,
                "type": "string",
                "description": "name of the #{spec.names!.kind}",
                "name": "name",
                "in": "path",
                "required": true
              },
              {
                "uniqueItems": true,
                "type": "string",
                "description": "object name and auth scope, such as for teams and projects",
                "name": "namespace",
                "in": "path",
                "required": true
              },
              {
                "uniqueItems": true,
                "type": "string",
                "description": "If 'true', then the output is pretty printed.",
                "name": "pretty",
                "in": "query"
              }
            ]
            JSON
        ),
      ),
    }
  end

  # Default paths for crds:
  # /apis/stable.example.com/v1/namespaces/*/crontabs/...
  private def list_path(ver)
    Swagger::Path.new(
      get: Swagger::Path::Action.new(
        operationId: "list#{ver.group}#{ver.version}#{ver.kind}ForAllNamespaces",
        description: "list or watch objects of kind #{ver.kind}",
        responses: Hash(String, Swagger::Path::Action::Response).from_json(
          <<-RESP
            {
              "200": {
                "description": "OK",
                "schema": {
                  "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.list_kind}"
                }
              },
              "401": {
                "description": "Unauthorized"
              }
            }
            RESP
        ),
        x_kubernetes_action: "list",
        parameters: LIST_PARAMS,
        tags: spec.names!.categories? || Array(String).new,
      )
    )
  end

  private def get_action(ver)
    Swagger::Path::Action.new(
      operationId: "list#{ver.group}#{ver.version}Namespaced#{ver.kind}",
      description: "list or watch objects of kind #{ver.kind}",
      responses: Hash(String, Swagger::Path::Action::Response).from_json(
        <<-RESP
        {
          "200": {
            "description": "OK",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.list_kind}"
            }
          },
          "401": {
            "description": "Unauthorized"
          }
        }
        RESP
      ),
      x_kubernetes_action: "list",
      parameters: LIST_PARAMS,
      tags: spec.names!.categories? || Array(String).new,
    )
  end

  private def post_action(ver)
    Swagger::Path::Action.new(
      description: "create a #{ver.kind}",
      tags: spec.names!.categories,
      operationId: "create#{ver.group}#{ver.version}Namespaced#{ver.kind}",
      x_kubernetes_action: "post",
      parameters: Array(Swagger::Path::Parameter).from_json(
        <<-PARAMS
        [
          {
            "name": "body",
            "in": "body",
            "required": true,
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{ver.kind}"
            }
          }
        ]
        PARAMS
      ),
      responses: Hash(String, Swagger::Path::Action::Response).from_json(
        <<-RESP
        {
          "200": {
            "description": "OK",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{ver.kind}"
            }
          },
          "201": {
            "description": "Created",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{ver.kind}"
            }
          },
          "202": {
            "description": "Accepted",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{ver.kind}"
            }
          },
          "401": {
            "description": "Unauthorized"
          }
        }
        RESP
      ),
    )
  end

  private def delete_action(ver)
    Swagger::Path::Action.new(
      description: "delete collection of #{ver.kind}",
      tags: spec.names!.categories? || Array(String).new,
      operationId: "delete#{ver.group}#{ver.version}CollectionNamespaced#{ver.kind}",
      x_kubernetes_action: "deletecollection",
      parameters: LIST_PARAMS,
      responses: Hash(String, Swagger::Path::Action::Response).from_json(
        <<-'RESP'
        {
          "200": {
            "description": "OK",
            "schema": {
              "$ref": "#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.Status"
            }
          },
          "401": {
            "description": "Unauthorized"
          }
        }
        RESP
      ),
    )
  end

  def get_single_action(ver)
    Swagger::Path::Action.new(
      operationId: "read#{ver.group}#{ver.version}Namespaced#{ver.kind}",
      description: "read the specified #{ver.kind}",
      x_kubernetes_action: "get",
      tags: spec.names!.categories? || Array(String).new,
      responses: Hash(String, Swagger::Path::Action::Response).from_json(
        <<-RESP
        {
          "200": {
            "description": "OK",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.kind}"
            }
          },
          "401": {
            "description": "Unauthorized"
          }
        }
        RESP
      ),
      parameters: Array(Swagger::Path::Parameter).from_json(
        <<-'JSON'
        [
          {
            "uniqueItems": true,
            "type": "boolean",
            "description": "Should the export be exact.  Exact export maintains cluster-specific fields like 'Namespace'.",
            "name": "exact",
            "in": "query"
          },
          {
            "uniqueItems": true,
            "type": "boolean",
            "description": "Should this value be exported.  Export strips fields that a user can not specify.",
            "name": "export",
            "in": "query"
          }
        ]
        JSON
      ),
    )
  end

  def put_single_action(ver)
    Swagger::Path::Action.new(
      operationId: "replace#{ver.group}#{ver.version}Namespaced#{ver.kind}",
      description: "replace the specified #{ver.kind}",
      x_kubernetes_action: "put",
      tags: spec.names!.categories? || Array(String).new,
      responses: Hash(String, Swagger::Path::Action::Response).from_json(
        <<-RESP
        {
          "200": {
            "description": "OK",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.kind}"
            }
          },
          "201": {
            "description": "Created",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.kind}"
            }
          },
          "401": {
            "description": "Unauthorized"
          }
        }
        RESP
      ),
      parameters: Array(Swagger::Path::Parameter).from_json(
        <<-JSON
        [
          {
            "name": "body",
            "in": "body",
            "required": true,
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.kind}"
            }
          }
        ]
        JSON
      ),
    )
  end

  def delete_single_action(ver)
    Swagger::Path::Action.new(
      operationId: "delete#{ver.group}#{ver.version}Namespaced#{ver.kind}",
      description: "delete a #{ver.kind}",
      x_kubernetes_action: "delete",
      tags: spec.names!.categories? || Array(String).new,
      responses: Hash(String, Swagger::Path::Action::Response).from_json(
        <<-'RESP'
        {
          "200": {
            "description": "OK",
            "schema": {
              "$ref": "#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.Status"
            }
          },
          "401": {
            "description": "Unauthorized"
          }
        }
        RESP
      ),
      parameters: Array(Swagger::Path::Parameter).from_json(
        <<-'JSON'
        [
          {
            "name": "body",
            "in": "body",
            "required": true,
            "schema": {
              "$ref": "#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions"
            }
          },
          {
            "uniqueItems": true,
            "type": "integer",
            "description": "The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.",
            "name": "gracePeriodSeconds",
            "in": "query"
          },
          {
            "uniqueItems": true,
            "type": "boolean",
            "description": "Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.",
            "name": "orphanDependents",
            "in": "query"
          },
          {
            "uniqueItems": true,
            "type": "string",
            "description": "Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.",
            "name": "propagationPolicy",
            "in": "query"
          }
        ]
        JSON
      ),
    )
  end

  def patch_single_action(ver)
    Swagger::Path::Action.new(
      operationId: "patch#{ver.group}#{ver.version}Namespaced#{ver.kind}",
      description: "partially update the specified #{ver.kind}",
      x_kubernetes_action: "patch",
      tags: spec.names!.categories? || Array(String).new,
      responses: Hash(String, Swagger::Path::Action::Response).from_json(
        <<-RESP
        {
          "200": {
            "description": "OK",
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.kind}"
            }
          },
          "401": {
            "description": "Unauthorized"
          }
        }
        RESP
      ),
      parameters: Array(Swagger::Path::Parameter).from_json(
        <<-JSON
        [
          {
            "name": "body",
            "in": "body",
            "required": true,
            "schema": {
              "$ref": "#/definitions/#{ver.api_base}.#{ver.version}.#{spec.names!.kind}"
            }
          }
        ]
        JSON
      ),
    )
  end
end
