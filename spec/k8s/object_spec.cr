require "spectator"
require "log"
require "../../src/k8s/object"

alias TestHash = ::K8S::Internals::HashObject(Number::Primitive)

Spectator.describe ::K8S::Internals::HashObject do
  context ".method_missing" do
    it "defines new method delegator returning self" do
      {% for method in %i(compact! clear) %}
       expect(TestHash.new.{{method.id}}).to be_a TestHash
      {% end %}
    end

    it "defines new method delegator returning self (with block)" do
      {% for method in %i(reject! select!) %}
        expect(TestHash.new.{{method.id}} { true }).to be_a TestHash
      {% end %}
    end
  end

  context ".deep_cast_value" do
    it "raises TypeCastError when passed invalid type" do
      expect_raises(TypeCastError, /cast from Int32 to .*/) do
        ::K8S::Internals::HashObject(Bool).deep_cast_value 1337.as(Int32 | Bool)
      end
    end
    it "accepts valid type" do
      expect(::K8S::Internals::HashObject(Symbol).deep_cast_value(:foo)).to eq(:foo)
    end
  end

  context "#is_a? Enumerable" do
    it do
      expect(TestHash.new).to be_a Enumerable({String, Number::Primitive})
    end
  end

  context "#is_a? Iterable" do
    it do
      expect(TestHash.new).to be_a Iterable({String, Number::Primitive})
    end
  end

  context ".deep_cast_value" do
    let(valid_values) { {nil, 1, 2_i64, 13.37, true, :foo, "bar", Time.utc} }

    it "raises TypeCastError when passed invalid type" do
      expect_raises TypeCastError, /cast from Char to .*/ do
        K8S::Internals::GenericObject.deep_cast_value 'a'.as(Char | String)
      end

      expect_raises TypeCastError, /cast from Slice\(UInt8\) to .*/ do
        K8S::Internals::GenericObject.deep_cast_value Bytes.empty.as(Bytes | Int64)
      end
    end

    it "accepts valid JSON type" do
      valid_values.each do |v|
        expect(K8S::Internals::GenericObject.deep_cast_value(v)).to eq(v)
      end
    end

    it "converts Tuple to an Array" do
      expect(K8S::Internals::GenericObject.deep_cast_value({1, 2, 3})).to eq([1, 2, 3])
    end

    it "converts Tuple to an Array (recursive)" do
      expect(K8S::Internals::GenericObject.deep_cast_value({ { {1, 2, 3} } })).to eq([[[1, 2, 3]]])
    end

    it "converts NamedTuple to a Hash" do
      expect(K8S::Internals::GenericObject.deep_cast_value({foo: true, bar: 1337})).to eq({"foo" => true, "bar" => 1337})
    end

    it "converts NamedTuple to a Hash (recursive)" do
      expect(K8S::Internals::GenericObject.deep_cast_value({foo: {jazz: true, swing: :always}, bar: 1337}))
        .to eq({"foo" => {"jazz" => true, "swing" => :always}, "bar" => 1337})
    end

    it "accepts valid JSON type (recursive)" do
      recursive_values = {
        [[[valid_values.to_a]]],
        { { {valid_values} } },
        [{[valid_values]}],
        tuple = {named: :tuple, powers: {types: true}},
        {"good" => "hash", "bad" => tuple},
      }
      recursive_values.each do |v|
        expect(K8S::Internals::GenericObject.deep_cast_value(v)).to be_truthy
      end
    end
  end

  context "#initialize" do
    it "raises TypeCastError when passed invalid type" do
      expect_raises TypeCastError, /cast from Slice\(UInt8\) to .*?/ do
        K8S::Internals::GenericObject.new({invalid: Bytes.empty.as(Bytes | Int64)})
      end
      expect_raises TypeCastError, /cast from Char to .*?/ do
        K8S::Internals::GenericObject.new({why_oh_why_i_did_not_call_to_s: 'a'.as(Char | String)})
      end
    end

    it "takes another K8S::Internals::GenericObject, Hash or NamedTuple as an initial value" do
      expect(K8S::Internals::GenericObject.new(K8S::Internals::GenericObject.new({foo: {bar: true}})).to_h).to eq({"foo" => {"bar" => true}})
      expect(K8S::Internals::GenericObject.new({foo: {bar: true}}).to_h).to eq({"foo" => {"bar" => true}})
      expect(K8S::Internals::GenericObject.new({:foo => {:bar => true}}).to_h).to eq({"foo" => {"bar" => true}})
    end
  end

  context ".deep_merge!" do
    it "merges given Hash with another K8S::Internals::GenericObject, Hash or NamedTuple" do
      hash = {} of K8S::Internals::GenericObject::Key => K8S::Internals::GenericObject::Value

      expect(K8S::Internals::GenericObject.deep_merge!(hash, *{
        K8S::Internals::GenericObject.new({foo: {bar: true}}),
        {:foo => {swing: 133.7}},
        {foo: {jazz: "60s"}},
        {foo: {roar: Hash(Symbol, Symbol).new}},
        {:foo => {roar: {"alfa" => "beta"}}},
      })).to eq(hash)

      expect(hash).to eq({
        "foo" => {"bar" => true, "swing" => 133.7, "jazz" => "60s", "roar" => {"alfa" => "beta"}},
      })
    end
  end

  context "#dup" do
    it "returns shallow copy of the self" do
      hash = K8S::Internals::GenericObject.new({foo: {bar: true}})
      other = hash.dup.merge! jazz: {swing: true}

      expect(other.dig?(:jazz, :swing)).to eq(true)
      expect(hash.dig?(:jazz, :swing)).to be_nil

      # other.merge! foo: {bar: :baz}
      # hash.dig?(:foo, :bar).should eq(:baz)
    end
  end

  context "#clone" do
    it "returns deep copy of the self" do
      hash = K8S::Internals::GenericObject.new({foo: {bar: {baz: {bat: {eat_fruits: true}}}}})
      other = hash.clone.merge! jazz: {swing: true}

      expect(other.dig?(:jazz, :swing)).to eq(true)
      expect(hash.dig?(:jazz, :swing)).to be_nil

      other.merge! foo: {bar: {baz: {bat: {eat_fruits: false}}}}
      expect(hash.dig?(:foo, :bar, :baz, :bat, :eat_fruits)).to eq(true)
    end
  end

  context "#==" do
    let(samples) { {
      eq:  {K8S::Internals::GenericObject.new({foo: 1337}), {foo: 1337_i64}, {"foo" => 1337}},
      neq: {K8S::Internals::GenericObject.new({json: :jmom}), {foo: false}, {"bar" => "fly"}},
    } }

    it "compares keys and values of K8S::Internals::GenericObject, Hash or NamedTuple" do
      samples[:eq].in_groups_of(2, samples[:eq].last).each do |(hash, another)|
        expect((hash == another)).to be_true
      end
      samples[:neq].in_groups_of(2, samples[:neq].first).each do |(hash, another)|
        expect((hash == another)).to be_false
      end
    end
  end

  context "#[]?" do
    let(hash) { K8S::Internals::GenericObject.new({foo: {jazz: "60s"}, oof: true, zilch: nil}) }

    it "returns nil if value is missing" do
      expect(hash[:foo, :swing]?).to be_nil
      expect(hash[:bar, :foo]?).to be_nil
    end
    it "extracts the nested value" do
      expect(hash[:foo]?).to eq({"jazz" => "60s"})
      expect(hash[:foo, :jazz]?).to eq("60s")
    end
  end

  context "#[]" do
    let(hash) { K8S::Internals::GenericObject.new({foo: {jazz: "60s"}, oof: true, zilch: nil}) }

    it "raises if value is missing" do
      expect_raises(Exception) { hash.dig(:foo, :swing) }
      expect_raises(Exception) { hash.dig(:bar, :foo) }
      expect_raises(Exception) { hash.dig(:foo, :jazz, :blues) }
      expect_raises(Exception) { hash.dig(:oof, :foo) }
    end
    it "extracts the nested value" do
      expect(hash["foo"]).to eq({"jazz" => "60s"})
      expect(hash[:foo]).to eq({"jazz" => "60s"})
      expect(hash["foo", "jazz"]).to eq("60s")
      expect(hash["foo", :jazz]).to eq("60s")
      expect(hash[:foo, :jazz]).to eq("60s")
    end
  end

  context "#[]=(key, value)" do
    it "writes under the given key" do
      hash = K8S::Internals::GenericObject.new({foo: {jazz: "60s"}})
      expect((hash[:bar] = :foo)).to eq(:foo)
      expect(hash.==({foo: {jazz: "60s"}, bar: :foo})).to be_true
    end
    it "overwrites the given key" do
      hash = K8S::Internals::GenericObject.new({foo: {jazz: "60s"}})
      expect((hash[:foo] = :bar)).to eq(:bar)
      expect(hash.==({foo: :bar})).to be_true
    end
  end

  context "#[]=(*args)" do
    it "writes under the given nested key" do
      hash = K8S::Internals::GenericObject.new({foo: {jazz: "60s"}})
      expect((hash[:foo, :jazz] = :bar)).to eq(:bar)
      expect(hash.==({foo: {jazz: :bar}})).to be_true
    end
    it "overwrites the given nested key" do
      hash = K8S::Internals::GenericObject.new({foo: {jazz: "60s"}})
      expect((hash[:foo, :jazz] = :bar)).to eq(:bar)
      expect(hash.==({foo: {jazz: :bar}})).to be_true
    end
  end

  context "#dig?" do
    let(hash) { K8S::Internals::GenericObject.new({foo: {jazz: "60s"}, oof: true, zilch: nil}) }

    it "returns nil if intermediate value is missing" do
      expect(hash.dig?(:foo, :swing)).to be_nil
      expect(hash.dig?(:bar, :foo)).to be_nil
    end
    it "returns nil if intermediate value is not a Hash" do
      expect(hash.dig?(:foo, :jazz, :blues)).to be_nil
      expect(hash.dig?(:foo, :jazz, 0)).to be_nil
      expect(hash.dig?(:oof, :foo)).to be_nil
    end

    it "extracts the nested value" do
      expect(hash.dig?(:foo)).to eq({"jazz" => "60s"})
      expect(hash.dig?(:foo, :jazz)).to eq("60s")
    end
    it "extracts the nested nil value" do
      expect(hash.dig?(:zilch)).to be_nil
    end
  end

  context "#dig" do
    let(hash) { K8S::Internals::GenericObject.new({foo: {jazz: "60s"}, oof: true, zilch: nil}) }

    it "raises if intermediate value is missing" do
      expect_raises KeyError, "Missing hash key: \"swing\"" do
        hash.dig(:foo, :swing)
      end
      expect_raises KeyError, "Missing hash key: \"bar\"" do
        hash.dig(:bar, :foo)
      end
    end
    it "raises if intermediate value is not a Hash" do
      expect_raises TypeCastError, /cast from String to Hash\(.*?\) failed/ do
        hash.dig(:foo, :jazz, :blues)
      end
      expect_raises TypeCastError, /cast from Bool to Hash\(.*?\) failed/ do
        hash.dig(:oof, :foo)
      end
    end

    it "extracts the nested value" do
      expect(hash.dig(:foo)).to eq({"jazz" => "60s"})
      expect(hash.dig(:foo, :jazz)).to eq("60s")
    end
    it "extracts the nested nil value" do
      expect(hash.dig(:zilch)).to be_nil
    end
  end

  context "#merge!" do
    it "destructively merges with contents of the given hash" do
      hash = K8S::Internals::GenericObject.new({foo: true})
      expect(hash.merge!(foo: false, bar: true).==({foo: false, bar: true})).to be_true
      expect(hash.==({foo: false, bar: true})).to be_true
    end
    it "destructively merges with contents of the given nested hash" do
      hash = K8S::Internals::GenericObject.new({foo: {bar: true}})
      expect(hash.merge!({foo: {bar: :baz}}).==({foo: {bar: :baz}})).to be_true
      expect(hash.==({foo: {bar: :baz}})).to be_true
    end
  end

  context "#merge" do
    it "non-destructively merges with contents of the given hash" do
      hash = K8S::Internals::GenericObject.new({foo: true})
      expect(hash.merge(foo: false, bar: true).==({foo: false, bar: true})).to be_true
      expect(hash.==({foo: true})).to be_true
    end
    it "non-destructively merges with contents of the given nested hash" do
      hash = K8S::Internals::GenericObject.new({foo: {bar: true}})
      expect(hash.merge({foo: {bar: :baz}}).==({foo: {bar: :baz}})).to be_true
      expect(hash.==({foo: {bar: true}})).to be_true
    end
  end

  context "#reverse_merge!" do
    it "destructively merges with contents of the given hash" do
      hash = K8S::Internals::GenericObject.new({foo: true})
      expect(hash.reverse_merge!(foo: false, bar: true).==({foo: true, bar: true})).to be_true
      expect(hash.==({foo: true, bar: true})).to be_true
    end
    it "destructively merges with contents of the given nested hash" do
      hash = K8S::Internals::GenericObject.new({foo: {bar: true}})
      expect(hash.reverse_merge!({foo: {bar: :baz}}).==({foo: {bar: true}})).to be_true
      expect(hash.==({foo: {bar: true}})).to be_true
    end
  end

  context "#reverse_merge" do
    it "non-destructively merges with contents of the given hash" do
      hash = K8S::Internals::GenericObject.new({foo: true})
      expect(hash.reverse_merge(foo: false, bar: true).==({foo: true, bar: true})).to be_true
      expect(hash.==({foo: true})).to be_true
    end
    it "non-destructively merges with contents of the given nested hash" do
      hash = K8S::Internals::GenericObject.new({foo: {bar: true}})
      expect(hash.reverse_merge({foo: {bar: :baz}}).==({foo: {bar: true}})).to be_true
      expect(hash.==({foo: {bar: true}})).to be_true
    end
  end

  context "#replace" do
    let(samples) { {
      K8S::Internals::GenericObject.new({bar: {swing: "40s"}}),
      {"good" => {"hash" => {"with" => :pollen}}},
      {"takes" => :tuple_too},
    } }

    it "replaces contents of underlying Hash with given K8S::Internals::GenericObject, Hash or NamedTuple" do
      hash = K8S::Internals::GenericObject.new({foo: {jazz: "60s"}})
      samples.each do |other|
        expect(hash.replace(other).==(other)).to be_true
        expect(hash.==(other)).to be_true
      end
    end
  end
end
