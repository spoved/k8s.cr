require "../../spec_helper"

Spectator.describe K8S::Hashdiff do
  let(described_class) { K8S::Hashdiff }

  it "is able to diff two empty hashes" do
    diff = described_class.diff(Hash(String, String).new, Hash(String, String).new)
    expect(diff).to match Array(String).new
  end

  it "is able to diff an hash with an empty hash" do
    a = {"a" => 3, "b" => 2}
    b = Hash(String, String).new

    diff = described_class.diff(a, b)
    expect(diff).to eq([{"-", "a", 3}, {"-", "b", 2}])

    diff = described_class.diff(b, a)
    expect(diff).to match [{"+", "a", 3}, {"+", "b", 2}]
  end

  it "is able to diff two equal hashes" do
    diff = described_class.diff({"a" => 2, "b" => 2}, {"a" => 2, "b" => 2})
    expect(diff).to match Array(String).new
  end

  it "is able to diff two equal hashes with mixed key types" do
    a = {"a" => 1, :b => 1}
    diff = described_class.diff(a, a)
    expect(diff).to match Array(String).new
  end

  it "is able to diff if mixed key types are removed" do
    a = {"a" => 1, :b => 1}
    b = Hash(String, String).new
    diff = described_class.diff(a, b)
    expect(diff).to match [{"-", "a", 1}, {"-", "b", 1}]
  end

  it "is able to diff if mixed key types are added" do
    a = {"a" => 1, :b => 1}
    b = Hash(String, String).new
    diff = described_class.diff(b, a)
    expect(diff).to match [{"+", "a", 1}, {"+", "b", 1}]
  end

  it "is able to diff two hashes with equivalent numerics, when strict is false" do
    diff = described_class.diff({"a" => 2.0, "b" => 2}, {"a" => 2, "b" => 2.0}, strict: false)
    expect(diff).to match Array(String).new
  end

  it "ignores string vs symbol differences, when indifferent is true" do
    diff = described_class.diff({"a" => 2, :b => 2}, {:a => 2, "b" => 2, :c => 3}, indifferent: true)
    expect(diff).to match [{"+", "c", 3}]
  end

  it "is able to diff changes in hash value" do
    diff = described_class.diff({"a" => 2, "b" => 3, "c" => " hello"}, {"a" => 2, "b" => 4, "c" => "hello"})
    expect(diff).to match [{"~", "b", 3, 4}, {"~", "c", " hello", "hello"}]
  end

  it "is able to diff changes in hash value which is array" do
    diff = described_class.diff({"a" => 2, "b" => [1, 2, 3]}, {"a" => 2, "b" => [1, 3, 4]})
    expect(diff).to match [{"-", "b[1]", 2}, {"+", "b[2]", 4}]
  end

  it "is able to diff changes in hash value which is hash" do
    diff = described_class.diff({
      "a" => {"x" => 2, "y" => 3, "z" => 4}, "b" => {"x" => 3, "z" => 45},
    }, {
      "a" => {"y" => 3}, "b" => {"y" => 3, "z" => 30},
    })
    expect(diff).to match [{"-", "a.x", 2}, {"-", "a.z", 4}, {"-", "b.x", 3}, {"+", "b.y", 3}, {"~", "b.z", 45, 30}]
  end

  it "is able to best diff similar objects in array" do
    diff = described_class.best_diff({"a" => [{"x" => 2, "y" => 3, "z" => 4}, {"x" => 11, "y" => 22, "z" => 33}], "b" => {"x" => 3, "z" => 45}},
      {"a" => [{"y" => 3}, {"x" => 11, "z" => 33}], "b" => {"y" => 22}})
    expect(diff).to match [{"-", "a[0].x", 2}, {"-", "a[0].z", 4}, {"-", "a[1].y", 22}, {"-", "b.x", 3}, {"-", "b.z", 45}, {"+", "b.y", 22}]
  end

  it "is able to diff addition of key value pair" do
    a = {"a" => 3, "c" => 11, "d" => 45, "e" => 100, "f" => 200}
    b = {"a" => 3, "c" => 11, "d" => 45, "e" => 100, "f" => 200, "g" => 300}

    diff = described_class.diff(a, b)
    expect(diff).to eq([{"+", "g", 300}])

    diff = described_class.diff(b, a)
    expect(diff).to match [{"-", "g", 300}]
  end

  it "is able to diff value type changes" do
    a = {"a" => 3}
    b = {"a" => {"a1" => 1, "a2" => 2}}

    diff = described_class.diff(a, b)
    expect(diff).to eq([{"~", "a", 3, {"a1" => 1, "a2" => 2}}])

    diff = described_class.diff(b, a)
    expect(diff).to match [{"~", "a", {"a1" => 1, "a2" => 2}, 3}]
  end

  it "is able to diff value changes: array <=> Array(String).new" do
    a = {"a" => 1, "b" => [1, 2]}
    b = {"a" => 1, "b" => Array(String).new}

    diff = described_class.diff(a, b)
    expect(diff).to match [{"-", "b[1]", 2}, {"-", "b[0]", 1}]
  end

  it "is able to diff value changes: array <=> nil" do
    a = {"a" => 1, "b" => [1, 2]}
    b = {"a" => 1, "b" => nil}

    diff = described_class.diff(a, b)
    expect(diff).to match [{"~", "b", [1, 2], nil}]
  end

  it "is able to diff value chagnes: remove array completely" do
    a = {"a" => 1, "b" => [1, 2]}
    b = {"a" => 1}

    diff = described_class.diff(a, b)
    expect(diff).to match [{"-", "b", [1, 2]}]
  end

  it "is able to diff value changes: remove whole hash" do
    a = {"a" => 1, "b" => {"b1" => 1, "b2" => 2}}
    b = {"a" => 1}

    diff = described_class.diff(a, b)
    expect(diff).to match [{"-", "b", {"b1" => 1, "b2" => 2}}]
  end

  it "is able to diff value changes: hash <=> Hash(String, String).new" do
    a = {"a" => 1, "b" => {"b1" => 1, "b2" => 2}}
    b = {"a" => 1, "b" => Hash(String, String).new}

    diff = described_class.diff(a, b)
    expect(diff).to match [{"-", "b.b1", 1}, {"-", "b.b2", 2}]
  end

  it "is able to diff value changes: hash <=> nil" do
    a = {"a" => 1, "b" => {"b1" => 1, "b2" => 2}}
    b = {"a" => 1, "b" => nil}

    diff = described_class.diff(a, b)
    expect(diff).to match [{"~", "b", {"b1" => 1, "b2" => 2}, nil}]
  end

  it "is able to diff similar objects in array" do
    a = [{"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5}, 3]
    b = [1, {"a" => 1, "b" => 2, "c" => 3, "e" => 5}]

    diff = described_class.diff(a, b)
    expect(diff).to match [{"-", "[0].d", 4}, {"+", "[0]", 1}, {"-", "[2]", 3}]
  end

  it "is able to diff similar & equal objects in array" do
    a = [{"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5}, {"x" => 5, "y" => 6, "z" => 3}, 3]
    b = [{"a" => 1, "b" => 2, "c" => 3, "e" => 5}, 3]

    diff = described_class.diff(a, b)
    expect(diff).to match [{"-", "[0].d", 4}, {"-", "[1]", {"x" => 5, "y" => 6, "z" => 3}}]
  end

  it "uses custom delimiter when provided" do
    a = [{"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5}, {"x" => 5, "y" => 6, "z" => 3}, 3]
    b = [{"a" => 1, "b" => 2, "c" => 3, "e" => 5}, 3]

    diff = described_class.diff(a, b, similarity: 0.8, delimiter: "\t")
    expect(diff).to match [{"-", "[0]\td", 4}, {"-", "[1]", {"x" => 5, "y" => 6, "z" => 3}}]
  end

  context "when :numeric_tolerance requested" do
    it "is able to diff changes in hash value" do
      a = {"a" => 0.558, "b" => 0.0, "c" => 0.65, "d" => "fin"}
      b = {"a" => 0.557, "b" => "hats", "c" => 0.67, "d" => "fin"}

      diff = described_class.diff(a, b, numeric_tolerance: 0.01)
      expect(diff).to eq([{"~", "b", 0.0, "hats"}, {"~", "c", 0.65, 0.67}])

      diff = described_class.diff(b, a, numeric_tolerance: 0.01)
      expect(diff).to match [{"~", "b", "hats", 0.0}, {"~", "c", 0.67, 0.65}]
    end

    it "is able to diff changes in nested values" do
      a = {"a" => {"x" => 0.4, "y" => 0.338}, "b" => [13, 68.03]}
      b = {"a" => {"x" => 0.6, "y" => 0.341}, "b" => [14, 68.025]}

      diff = described_class.diff(a, b, numeric_tolerance: 0.01)
      expect(diff).to eq([{"~", "a.x", 0.4, 0.6}, {"-", "b[0]", 13}, {"+", "b[0]", 14}])

      diff = described_class.diff(b, a, numeric_tolerance: 0.01)
      expect(diff).to match [{"~", "a.x", 0.6, 0.4}, {"-", "b[0]", 14}, {"+", "b[0]", 13}]
    end
  end

  context "when :strip requested" do
    it "strips strings before comparing" do
      a = {"a" => " foo", "b" => "fizz buzz"}
      b = {"a" => "foo", "b" => "fizzbuzz"}
      diff = described_class.diff(a, b, strip: true)
      expect(diff).to match [{"~", "b", "fizz buzz", "fizzbuzz"}]
    end

    it "strips nested strings before comparing" do
      a = {"a" => {"x" => " foo"}, "b" => ["fizz buzz", "nerf"]}
      b = {"a" => {"x" => "foo"}, "b" => %w[fizzbuzz nerf]}
      diff = described_class.diff(a, b, strip: true)
      expect(diff).to match [{"-", "b[0]", "fizz buzz"}, {"+", "b[0]", "fizzbuzz"}]
    end
  end

  context "when :case_insensitive requested" do
    it "strips strings before comparing" do
      a = {"a" => "Foo", "b" => "fizz buzz"}
      b = {"a" => "foo", "b" => "fizzBuzz"}
      diff = described_class.diff(a, b, case_insensitive: true)
      expect(diff).to match [{"~", "b", "fizz buzz", "fizzBuzz"}]
    end

    it "ignores case on nested strings before comparing" do
      a = {"a" => {"x" => "Foo"}, "b" => ["fizz buzz", "nerf"]}
      b = {"a" => {"x" => "foo"}, "b" => %w[fizzbuzz nerf]}
      diff = described_class.diff(a, b, case_insensitive: true)
      expect(diff).to match [{"-", "b[0]", "fizz buzz"}, {"+", "b[0]", "fizzbuzz"}]
    end
  end

  context "when both :strip and :numeric_tolerance requested" do
    it "applies filters to proper object types" do
      a = {"a" => " foo", "b" => 35, "c" => "bar", "d" => "baz"}
      b = {"a" => "foo", "b" => 35.005, "c" => "bar", "d" => 18.5}
      diff = described_class.diff(a, b, strict: false, numeric_tolerance: 0.01, strip: true)
      expect(diff).to match [{"~", "d", "baz", 18.5}]
    end
  end

  context "when both :strip and :case_insensitive requested" do
    it "applies both filters to strings" do
      a = {"a" => " Foo", "b" => "fizz buzz"}
      b = {"a" => "foo", "b" => "fizzBuzz"}
      diff = described_class.diff(a, b, case_insensitive: true, strip: true)
      expect(diff).to match [{"~", "b", "fizz buzz", "fizzBuzz"}]
    end
  end

  context "when :array_path is true" do
    it "returns the diff path in an array rather than a string" do
      x = {"a" => "foo"}
      y = {"a" => "bar"}
      diff = described_class.diff(x, y, array_path: true)

      expect(diff).to match [{"~", ["a"], "foo", "bar"}]
    end

    it "shows array indexes in paths" do
      x = {"a" => [0, 1, 2]}
      y = {"a" => [0, 1, 2, 3]}

      diff = described_class.diff(x, y, array_path: true)

      expect(diff).to match [{"+", ["a", 3], 3}]
    end

    it "shows differences with string and symbol keys" do
      x = {"a" => "foo"}
      y = {a: "bar"}

      diff = described_class.diff(x, y, array_path: true)
      expect(diff).to match [{"-", ["a"], "foo"}, {"+", [:a], "bar"}]
    end

    it "supports other key types" do
      time = Time.utc
      x = {time => "foo"}
      y = {0 => "bar"}

      diff = described_class.diff(x, y, array_path: true)
      expect(diff).to match [{"-", [time], "foo"}, {"+", [0], "bar"}]
    end
  end

  context "when :array_path is true" do
    it "returns the diff path in an array rather than a string" do
      x = {"a" => "foo"}
      y = {"a" => "bar"}
      diff = described_class.diff(x, y, array_path: true)

      expect(diff).to match [{"~", ["a"], "foo", "bar"}]
    end

    it "shows array indexes in paths" do
      x = {"a" => [0, 1, 2]}
      y = {"a" => [0, 1, 2, 3]}

      diff = described_class.diff(x, y, array_path: true)

      expect(diff).to match [{"+", ["a", 3], 3}]
    end

    it "shows differences with string and symbol keys" do
      x = {"a" => "foo"}
      y = {a: "bar"}

      diff = described_class.diff(x, y, array_path: true)
      expect(diff).to match [{"-", ["a"], "foo"}, {"+", [:a], "bar"}]
    end

    it "supports other key types" do
      time = Time.utc
      x = {time => "foo"}
      y = {0 => "bar"}

      diff = described_class.diff(x, y, array_path: true)
      expect(diff).to match [{"-", [time], "foo"}, {"+", [0], "bar"}]
    end
  end

  context "when :use_lcs is false" do
    it "shows items in an array as changed" do
      x = %i[a b]
      y = %i[c d]
      diff = described_class.diff(x, y, use_lcs: false)

      expect(diff).to match [{"~", "[0]", :a, :c}, {"~", "[1]", :b, :d}]
    end

    it "shows additions to arrays" do
      x = {a: [0]}
      y = {a: [0, 1]}
      diff = described_class.diff(x, y, use_lcs: false)

      expect(diff).to match [{"+", "a[1]", 1}]
    end

    it "shows changes to nested arrays" do
      x = {a: [[0, 1]]}
      y = {a: [[1, 2]]}
      diff = described_class.diff(x, y, use_lcs: false)

      expect(diff).to match [{"~", "a[0][0]", 0, 1}, {"~", "a[0][1]", 1, 2}]
    end
  end
end
