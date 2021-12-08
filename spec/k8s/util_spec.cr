require "../spec_helper"

Spectator.describe K8S::Util do
  let(described_class) { K8S::Util }
  describe "#deep_merge" do
    it "deep merges hashes inside hashes" do
      hash1 = {"foo" => {"bar" => {"baz" => "dog"}}}
      hash2 = {"foo" => {"bar" => {"buzz" => "aldrin"}}}
      options = {overwrite_arrays: true, union_arrays: false, keep_existing: false, merge_nil_values: false, merge_non_hash: false}
      expect(K8S::Util.deep_merge(hash1, hash2, **options)).to eq(
        {"foo" => {"bar" => {"baz" => "dog", "buzz" => "aldrin"}}}
      )
    end

    describe "overwrite_arrays: true" do
      it "replaces arrays with new arrays" do
        hash1 = {"foo" => {"bar" => ["baz"]}}
        hash2 = {"foo" => {"bar" => ["dog"]}}
        options = {overwrite_arrays: true, union_arrays: false, keep_existing: false, merge_nil_values: false, merge_non_hash: false}
        expect(K8S::Util.deep_merge(hash1, hash2, **options)).to eq(
          {"foo" => {"bar" => ["dog"]}}
        )
      end
    end

    describe "overwrite_arrays: false, union_arrays: true" do
      it "creates array union with new array" do
        hash1 = {"foo" => {"bar" => ["baz", "cat"]}}
        hash2 = {"foo" => {"bar" => ["dog", "baz"]}}
        expect(K8S::Util.deep_merge(hash1, hash2, overwrite_arrays: false, union_arrays: true)).to eq(
          {"foo" => {"bar" => ["baz", "cat", "dog"]}}
        )
      end
    end

    describe "overwrite_arrays: false, union_arrays: false" do
      it "combines arrays" do
        hash1 = {"foo" => {"bar" => ["baz"]}}
        hash2 = {"foo" => {"bar" => ["dog", "baz"]}}
        expect(K8S::Util.deep_merge(hash1, hash2, overwrite_arrays: false, union_arrays: false)).to eq(
          {"foo" => {"bar" => ["baz", "dog", "baz"]}}
        )
      end
    end

    describe "keep_existing:" do
      let(hash1) { {"foo" => {"bar" => "baz"}} }
      let(hash2) { {"foo" => {"bar" => "dog"}} }

      context "true" do
        it "keeps existing values" do
          expect(K8S::Util.deep_merge(hash1, hash2, keep_existing: true)).to eq(
            {"foo" => {"bar" => "baz"}}
          )
        end
      end

      context "false" do
        it "replaces existing values" do
          expect(K8S::Util.deep_merge(hash1, hash2, keep_existing: false)).to eq(
            {"foo" => {"bar" => "dog"}}
          )
        end
      end
    end

    describe "merge_nil_values" do
      context "false" do
        it "does not replace existing values with nils" do
          hash1 = {"foo" => {"bar" => "baz"}}
          hash2 = {"foo" => {"bar" => nil}}
          expect(K8S::Util.deep_merge(hash1, hash2, merge_nil_values: false)).to eq(
            {"foo" => {"bar" => "baz"}}
          )
        end
      end

      context "true" do
        it "replaces existing values with nils" do
          hash1 = {"foo" => {"bar" => "baz"}}
          hash2 = {"foo" => {"bar" => nil}}
          expect(K8S::Util.deep_merge(hash1, hash2, merge_nil_values: true)).to eq(
            {"foo" => {"bar" => nil}}
          )
        end
      end
    end
  end

  describe "#compact_map" do
    it "returns an empty array for an empty array" do
      expect(described_class.compact_map(Array(String).new) { |args| args.map(&.to_s.as(String)) }).to eq Array(String).new
    end

    # it "returns an array of nil for an array of nil" do
    #   expect(described_class.compact_map([nil]) { |args| args.map(&.to_s.as(String)) }).to eq [nil]
    # end

    it "translates non-nil values" do
      expect(described_class.compact_map([1]) { |args| args.map(&.to_s.as(String)) }).to eq ["1"]
    end

    it "translates non-nil values and passes through nil values" do
      expect(described_class.compact_map([nil, 1]) { |args| args.map(&.to_s.as(String)) }).to eq [nil, "1"]
    end

    it "handles duplicates" do
      expect(described_class.compact_map([nil, 1, 2, 1]) { |args| args.map(&.to_s.as(String)) }).to eq [nil, "1", "2", "1"]
    end
  end

  describe "#recursive_compact" do
    it "compacts hashes recursively with k8s style" do
      hash = YAML.parse(
        <<-YAML
        kind: NetworkPolicy
        apiVersion: networking.k8s.io/v1
        metadata:
          name: web-allow-external
        spec:
          podSelector:
            matchLabels:
              app: web
              foo: ""
              bar: {}
              baz: []
          ingress:
          - from: []
        YAML
      )
      expect(described_class.recursive_compact(hash.as_h)).to eq({
        "apiVersion" => "networking.k8s.io/v1",
        "kind"       => "NetworkPolicy",
        "metadata"   => {"name" => "web-allow-external"},
        "spec"       => {
          "podSelector" => {
            "matchLabels" => {
              "app" => "web",
              "foo" => "",
            },
          },
          "ingress" => [{
            "from" => Array(String).new,
          }],
        },
      })
    end
  end

  describe "#json_patch", focus: true do
    it "handles inner hash addition" do
      a = {
        metadata: {
          labels: {
            foo: "bar",
          },
        },
      }
      b = {
        metadata: {
          labels: {
            foo:     "bar",
            another: "label",
          },
        },
      }

      expect(described_class.json_patch(a, b)).to eq([{op: "add", path: "/metadata/labels/another", value: "label"}])
    end

    it "handles inner hash removal" do
      a = {
        metadata: {
          labels: {
            foo: "bar",
          },
        },
      }
      b = {
        metadata: {
          labels: Hash(String, String).new,
        },
      }

      expect(described_class.json_patch(a, b)).to eq([{op: "remove", path: "/metadata/labels/foo"}])
    end

    it "handles complete label change" do
      a = {
        metadata: {
          labels: {
            foo: "bar",
          },
        },
      }
      b = {
        metadata: {
          labels: {
            bar: "foo",
          },
        },
      }

      expect(described_class.json_patch(a, b)).to eq([{op: "remove", path: "/metadata/labels/foo"}, {op: "add", path: "/metadata/labels/bar", value: "foo"}])
    end

    it "handles single label value change" do
      a = {
        metadata: {
          labels: {
            foo: "bar",
          },
        },
      }
      b = {
        metadata: {
          labels: {
            foo: "foo",
          },
        },
      }

      expect(described_class.json_patch(a, b)).to eq([{op: "replace", path: "/metadata/labels/foo", value: "foo"}])
    end

    it "handles array addition" do
      a = {
        ports: [
          {
            name:       "foo",
            port:       80,
            targetPort: 80,
          },
        ],
      }
      b = {
        ports: [
          {
            name:       "foo",
            port:       80,
            targetPort: 80,
          },
          {
            name:       "bar",
            port:       90,
            targetPort: 90,
          },
        ],
      }
      expect(described_class.json_patch(a, b)).to eq([{op: "add", path: "/ports/1", value: {name: "bar", port: 90, targetPort: 90}}])
    end

    it "handles keys with /" do
      a = {
        annotations: {
          "kubectl.kubernetes.io/last-applied-configuration" => "a",
        },
      }
      b = {
        annotations: {
          "kubectl.kubernetes.io/last-applied-configuration" => "b",
        },
      }
      expect(described_class.json_patch(a, b)).to eq([
        {
          op:    "replace",
          path:  "/annotations/kubectl.kubernetes.io~1last-applied-configuration",
          value: "b",
        },
      ])
    end

    it "handles array removal" do
      a = {
        ports: [
          {
            name:       "foo",
            port:       80,
            targetPort: 80,
          },
          {
            name:       "bar",
            port:       90,
            targetPort: 90,
          },
        ],
      }
      b = {
        ports: [
          {
            name:       "foo",
            port:       80,
            targetPort: 80,
          },
        ],
      }
      expect(described_class.json_patch(a, b)).to eq([{op: "remove", path: "/ports/1"}])
    end

    it "handles array element change" do
      a = {
        ports: [
          {
            name:       "foo",
            port:       80,
            targetPort: 80,
          },
          {
            name:       "bar",
            port:       90,
            targetPort: 90,
          },
        ],
      }
      b = {
        ports: [
          {
            name:       "foo",
            port:       80,
            targetPort: 80,
          },
          {
            name:       "bar",
            port:       9090,
            targetPort: 9090,
          },
        ],
      }
      expected_ops = [
        {op: "remove", path: "/ports/1"},
        {op: "add", path: "/ports/1", value: {name: "bar", port: 9090, targetPort: 9090}},
      ]

      expect(described_class.json_patch(a, b)).to eq(expected_ops)
    end
  end
end
