require "../spec_helper"

::K8S::Kubernetes::Resource.define_resource(group: "", version: "v1", kind: "TestObject")

struct ::K8S::Api::Apps::V1::DaemonSetSpecTest < K8S::Kubernetes::Object; end

struct ::K8S::Api::Apps::V1::DaemonSetStatusTest < K8S::Kubernetes::Object; end

struct TestService < K8S::Kubernetes::Resource
  define_prop(value1 : String, nilable: true, read_only: false, description: %<description>)
  define_prop(value2 : Int32, nilable: false, read_only: false, description: %<description>)
  define_prop(value3 : Bool = true, nilable: false, read_only: false, description: %<description>)
end

struct TestServiceList < K8S::Kubernetes::Resource::List(TestService); end

struct TestArrayProp < K8S::Kubernetes::Resource
  define_prop(strings : Array(String), nilable: true, read_only: false, description: %<description>)
  define_prop(ints : Array(Int32), nilable: false, read_only: false, description: %<description>)
  define_prop(bools : Array(Bool) = [true], nilable: false, read_only: false, description: %<description>)
  define_prop(mixed : Array(String | Int32), nilable: false, read_only: false, description: %<description>)
end

struct TestHashProp < K8S::Kubernetes::Resource
  define_prop(strings : Hash(String, String), nilable: true, read_only: false, description: %<description>)
  define_prop(ints : Hash(String, Int32), nilable: false, read_only: false, description: %<description>)
  define_prop(bools : Hash(String, Bool) = {"val" => false}, nilable: false, read_only: false, description: %<description>)
  define_prop(mixed : Hash(String, String | Int32 | Bool), nilable: false, read_only: false, description: %<description>)
end

::K8S::Kubernetes::Resource.define_resource("k3s.cattle.io", "v1", "Addon")
::K8S::Kubernetes::Resource.define_resource("helmcharts.helm.cattle.io", "v1", "HelmChart")
::K8S::Kubernetes::Resource.define_resource("apps", "v1", "DaemonSetTest",
  namespace: "::K8S::Api::Apps::V1",
  properties: [
    {name: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetSpecTest, description: %<The desired behavior of this daemon set. ....>},
    {name: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetStatusTest, description: %<The current status of this daemon set. ....>},
  ]
)

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "DaemonSetTestList",
  namespace: "::K8S::Api::Apps::V1", list: true, list_kind: ::K8S::Api::Apps::V1::DaemonSetTest,
)

Spectator.describe K8S::Kubernetes::Resource do
  let(service_resource) {
    {
      apiVersion: "v1",
      kind:       "Service",
      metadata:   {
        namespace: "default",
        name:      "whoami",
        labels:    {app: "whoami"},
      },
      spec: {
        selector: {
          app: "whoami",
        },
        ports: [
          {
            port:       80,
            protocol:   "TCP",
            targetPort: 8000,
          },
        ],
      },
    }
  }

  context "#initialize" do
    context K8S::Kubernetes::Resource::Generic do
      it "raises error when no apiVersion is provided" do
        expect_raises K8S::Kubernetes::Resource::Error, %<apiVersion must be defined> do
          K8S::Kubernetes::Resource::Generic.new(K8S::Internals::GenericObject.new({foo: {bar: true}}))
        end
      end

      it "raises error when no kind is provided" do
        expect_raises K8S::Kubernetes::Resource::Error, %<kind must be defined> do
          K8S::Kubernetes::Resource::Generic.new(K8S::Internals::GenericObject.new({apiVersion: "v1", foo: {bar: true}}))
        end
      end
    end

    it "will set apiVersion when none is provided" do
      obj = TestObject.new(K8S::Internals::GenericObject.new({foo: {bar: true}}))
      expect(obj.api_version).to eq("v1")
    end

    it "will set kind when none is provided" do
      obj = TestObject.new(K8S::Internals::GenericObject.new({apiVersion: "v1", foo: {bar: true}}))
      expect(obj.kind).to eq("TestObject")
    end

    it "takes another K8S::Internals::GenericObject, Hash or NamedTuple as an initial value" do
      expect(K8S::Kubernetes::Resource::Generic.new(K8S::Internals::GenericObject.new({
        apiVersion: "v1",
        kind:       "Foo",
        foo:        {bar: true},
      })).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})

      expect(K8S::Kubernetes::Resource::Generic.new({
        apiVersion: "v1",
        kind:       "Foo",
        foo:        {bar: true},
      }).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})

      expect(K8S::Kubernetes::Resource::Generic.new({
        :apiVersion => "v1",
        :kind       => "Foo",
        :foo        => {:bar => true},
      }).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})
    end
  end

  context ".method_missing" do
    it "passes method calls to the underlying object" do
      resource = K8S::Kubernetes::Resource::Generic.new(service_resource)
      expect(resource[:metadata, :labels]).to eq({"app" => "whoami"})
      expect(resource[:metadata, :labels, :app] = "myapp").to eq("myapp")
      expect(resource[:metadata, :labels, :app]).to eq("myapp")
    end
  end

  context "#api_version" do
    it "returns the apiVersion" do
      expect(K8S::Kubernetes::Resource::Generic.new(service_resource).api_version).to eq("v1")
    end

    it "raises error if apiVersion is not defined" do
      resource = K8S::Kubernetes::Resource::Generic.new(service_resource)
      resource.delete(:apiVersion)
      expect_raises K8S::Kubernetes::Resource::Error::NotNilable, %<apiVersion cannot be nil, please set the value or use api_version? to check it first> do
        resource.api_version
      end
    end
  end

  context "#kind" do
    it "returns the kind" do
      expect(K8S::Kubernetes::Resource::Generic.new(service_resource).kind).to eq("Service")
    end

    it "raises error if kind is not defined" do
      resource = K8S::Kubernetes::Resource::Generic.new(service_resource)
      resource.delete(:kind)
      expect_raises K8S::Kubernetes::Resource::Error::NotNilable, /^kind cannot be nil/ do
        resource.kind
      end
    end
  end

  context "serialization" do
    let(raw_json) { %<{"apiVersion":"v1","kind":"Foo","foo":{"bar":true}}> }
    let(raw_yaml) { %<---\napiVersion: v1\nkind: Foo\nfoo:\n  bar: true\n> }

    it "serializes to JSON" do
      expect(K8S::Kubernetes::Resource::Generic.new({
        apiVersion: "v1",
        kind:       "Foo",
        foo:        {bar: true},
      }).to_json).to eq(raw_json)
    end

    it "serializes from JSON" do
      expect(K8S::Kubernetes::Resource::Generic.from_json(raw_json).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})
    end

    it "serializes to YAML" do
      expect(K8S::Kubernetes::Resource::Generic.new({
        apiVersion: "v1",
        kind:       "Foo",
        foo:        {bar: true},
      }).to_yaml).to eq(raw_yaml)
    end

    it "serializes from YAML" do
      expect(K8S::Kubernetes::Resource::Generic.from_yaml(raw_yaml).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})
    end
  end

  context ".define_prop" do
    let(new_resource) { TestService.new(service_resource.merge({
      value1: "whoami",
      value2: 80,
      value3: true,
    })) }

    let(new_array_resource) { TestArrayProp.new({
      apiVersion: "v1",
      kind:       "TestArrayProp",
      metadata:   {
        namespace: "default",
        name:      "whoami",
        labels:    {app: "whoami"},
      },
      strings: ["foo", "bar"],
      ints:    [1, 2, 3],
      bools:   [true, false],
      mixed:   ["foo", 1, "bar", 2],
    }) }

    let(new_hash_resource) { TestHashProp.new({
      apiVersion: "v1",
      kind:       "TestHashProp",
      metadata:   {
        namespace: "default",
        name:      "whoami",
        labels:    {app: "whoami"},
      },
      strings: {"foo" => "bar"},
      ints:    {"foo" => 1},
      bools:   {"foo" => true},
      mixed:   {"foo" => "bar", "bar" => 1, "baz" => true},
    }) }

    it "creates a getter and setter for the given field" do
      resource = new_resource
      expect(resource.value1).to eq("whoami")
      expect(resource.value2).to eq(80)
      expect(resource.value3).to eq(true)

      resource.value1 = "myapp"
      resource.value2 = 8080
      resource.value3 = false

      expect(resource.value1).to eq("myapp")
      expect(resource.value2).to eq(8080)
      expect(resource.value3).to eq(false)
      expect(resource[:value3]).to eq(false)
      expect(resource["value3"]).to eq(false)
    end

    context "value is nilable" do
      it "returns nil when the field is not set" do
        resource = new_resource
        expect(resource.value1).to eq("whoami")
        resource.value1 = nil
        expect(resource.value1).to eq(nil)
      end
    end

    context "value is not nilable" do
      it "raises error when trying to access a nil value" do
        x = new_resource
        x.delete(:value3)
        expect_raises K8S::Kubernetes::Resource::Error::NotNilable, /^value3 cannot be nil/ do
          x.value3
        end
      end
    end

    it "wraps GenericObject in a Resource" do
      list = TestServiceList.new({
        apiVersion: "v1",
        kind:       "ServiceList",
        items:      [service_resource],
      })

      expect(list).to be_a(TestServiceList)
      expect(list.items).to be_a(Indexable(TestService))
      expect(list.items.first).to be_a(TestService)

      svc1 = list.items.first
      svc2 = list.items.first

      expect(svc1).to eq(svc2)
      svc1.value1 = "myapp"
      expect(svc1.value1).to eq("myapp")
      expect(svc2.value1).to eq("myapp")
    end

    it "handles arrays" do
      obj = new_array_resource
      expect(obj.strings).to eq ["foo", "bar"]
      expect(obj.ints).to eq [1, 2, 3]
      expect(obj.bools).to eq [true, false]
      expect(obj.mixed).to eq ["foo", 1, "bar", 2]
    end

    it "handles hashes" do
      obj = new_hash_resource
      expect(obj.strings).to eq({"foo" => "bar"})
      expect(obj.ints).to eq({"foo" => 1})
      expect(obj.bools).to eq({"foo" => true})
      expect(obj.mixed).to eq({"foo" => "bar", "bar" => 1, "baz" => true})
    end
  end

  context ".define_resource" do
    let(valid_data) { {
      apiVersion: "apps/v1",
      kind:       "DaemonSetTest",
      metadata:   {
        labels: {
          app: "whoami",
        },
      },
      spec: {
        template: {
          metadata: {
            labels: {
              app: "whoami",
            },
          },
        },
      },
      status: {
        currentNumberScheduled: 1,
      },
    } }

    let(invalid_data) { {
      apiVersion: "v1",
      kind:       "Foo",
      foo:        {bar: true},
    } }

    context "#initialize" do
      context "without arguments" do
        it "sets the apiVersion" do
          resource = ::K8S::Api::Apps::V1::DaemonSetTest.new
          expect(resource.api_version).to eq("apps/v1")
        end

        it "sets the kind" do
          resource = ::K8S::Api::Apps::V1::DaemonSetTest.new
          expect(resource.kind).to eq("DaemonSetTest")
        end
      end

      context "with a valid" do
        context "NamedTuple" do
          let(resource) { ::K8S::Api::Apps::V1::DaemonSetTest.new(valid_data) }
          it "sets the apiVersion" do
            expect(resource.api_version).to eq("apps/v1")
          end

          it "sets the kind" do
            expect(resource.kind).to eq("DaemonSetTest")
          end

          it "sets the metadata" do
            expect(resource.metadata![:labels, :app]).to eq("whoami")
          end

          it "sets the spec" do
            expect(resource.spec![:template, :metadata, :labels, :app]).to eq("whoami")
          end

          it "sets the status" do
            expect(resource.status![:currentNumberScheduled]).to eq(1)
          end
        end

        context "Hash" do
          let(resource) { ::K8S::Api::Apps::V1::DaemonSetTest.new(valid_data.to_h) }
          it "sets the apiVersion" do
            expect(resource.api_version).to eq("apps/v1")
          end

          it "sets the kind" do
            expect(resource.kind).to eq("DaemonSetTest")
          end

          it "sets the metadata" do
            expect(resource.metadata![:labels, :app]).to eq("whoami")
          end

          it "sets the spec" do
            expect(resource.spec![:template, :metadata, :labels, :app]).to eq("whoami")
          end

          it "sets the status" do
            expect(resource.status![:currentNumberScheduled]).to eq(1)
          end
        end

        context "GenericObject" do
          let(resource) { ::K8S::Api::Apps::V1::DaemonSetTest.new(::K8S::Internals::GenericObject.new(valid_data)) }
          it "sets the apiVersion" do
            expect(resource.api_version).to eq("apps/v1")
          end

          it "sets the kind" do
            expect(resource.kind).to eq("DaemonSetTest")
          end

          it "sets the metadata" do
            expect(resource.metadata![:labels, :app]).to eq("whoami")
          end

          it "sets the spec" do
            expect(resource.spec![:template, :metadata, :labels, :app]).to eq("whoami")
          end

          it "sets the status" do
            expect(resource.status![:currentNumberScheduled]).to eq(1)
          end
        end
      end

      context "with an invalid" do
        context "NamedTuple" do
          it "raises an error" do
            expect_raises K8S::Kubernetes::Resource::Error, /^apiVersion: "v1" does not match expected: \"apps\/v1\"/ do
              ::K8S::Api::Apps::V1::DaemonSetTest.new(invalid_data)
            end
          end
        end

        context "Hash" do
          it "raises an error" do
            expect_raises K8S::Kubernetes::Resource::Error, /^apiVersion: "v1" does not match expected: \"apps\/v1\"/ do
              ::K8S::Api::Apps::V1::DaemonSetTest.new(invalid_data.to_h)
            end
          end
        end

        context "GenericObject" do
          it "raises an error" do
            expect_raises K8S::Kubernetes::Resource::Error, /^apiVersion: "v1" does not match expected: \"apps\/v1\"/ do
              ::K8S::Api::Apps::V1::DaemonSetTest.new(::K8S::Internals::GenericObject.new(invalid_data))
            end
          end
        end
      end
    end

    context "list resource" do
      context "#<<" do
        it "adds item to underlying array" do
          list = ::K8S::Api::Apps::V1::DaemonSetTestList.new
          list << ::K8S::Api::Apps::V1::DaemonSetTest.new(valid_data)
          expect(list.items).to be_a(Indexable(::K8S::Api::Apps::V1::DaemonSetTest))
          expect(list.items.size).to eq(1)
        end
      end

      context "#items" do
        it "returns an empty array" do
          list = ::K8S::Api::Apps::V1::DaemonSetTestList.new
          expect(list.items).to be_a(Indexable(::K8S::Api::Apps::V1::DaemonSetTest))
          expect(list.items).to be_empty
        end

        it "adds item to underlying array" do
          list = ::K8S::Api::Apps::V1::DaemonSetTestList.new
          list.items << ::K8S::Api::Apps::V1::DaemonSetTest.new(valid_data)
          expect(list.items).to be_a(Indexable(::K8S::Api::Apps::V1::DaemonSetTest))
          expect(list.items.size).to eq(1)
        end
      end

      context "#items!" do
        it "returns an empty array" do
          list = ::K8S::Api::Apps::V1::DaemonSetTestList.new
          expect(list.items!).to be_a(Indexable(::K8S::Api::Apps::V1::DaemonSetTest))
          expect(list.items).to be_empty
        end
      end

      context "#items=" do
        it "sets an array of DaemonSetTest" do
          list = ::K8S::Api::Apps::V1::DaemonSetTestList.new
          list.items = [::K8S::Api::Apps::V1::DaemonSetTest.new(valid_data)]
          expect(list.items!).to be_a(Indexable(::K8S::Api::Apps::V1::DaemonSetTest))
          expect(list.items.first).to be_a(::K8S::Api::Apps::V1::DaemonSetTest)
        end
      end

      context "#initialize" do
        context "without arguments" do
          it "sets the apiVersion" do
            resource = ::K8S::Api::Apps::V1::DaemonSetTestList.new
            expect(resource.api_version).to eq("apps/v1")
          end

          it "sets the kind" do
            resource = ::K8S::Api::Apps::V1::DaemonSetTestList.new
            expect(resource.kind).to eq("DaemonSetTestList")
          end
        end

        context "with only items" do
          it "sets the items" do
            list = ::K8S::Api::Apps::V1::DaemonSetTestList.new([valid_data])
            expect(list.items.size).to eq(1)
            expect(list.items.first.api_version).to eq("apps/v1")
            expect(list.items.first.kind).to eq("DaemonSetTest")
          end
        end

        context "with items" do
          context "that are valid" do
            let(items) { [valid_data] }
            let(list) { ::K8S::Api::Apps::V1::DaemonSetTestList.new({
              apiVersion: "apps/v1",
              kind:       "DaemonSetTestList",
              items:      items,
            }) }

            it "sets the items" do
              expect(list.items.size).to eq(1)
              expect(list.items.first.api_version).to eq("apps/v1")
              expect(list.items.first.kind).to eq("DaemonSetTest")
            end
          end
        end
      end
    end
  end
end
