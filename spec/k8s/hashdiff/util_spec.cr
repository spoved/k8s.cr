require "../../spec_helper"

class THash < Hash(String, String); end

Spectator.describe K8S::Hashdiff do
  let(described_class) { K8S::Hashdiff }
  it "is able to decode property path" do
    decoded = described_class.decode_property_path("a.b[0].c.city[5]")
    expect(decoded).to match ["a", "b", 0, "c", "city", 5]
  end

  it "is able to decode property path with custom delimiter" do
    decoded = described_class.decode_property_path("a\tb[0]\tc\tcity[5]", "\t")
    expect(decoded).to match ["a", "b", 0, "c", "city", 5]
  end

  it "is able to tell similiar hash" do
    a = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5}
    b = {"a" => 1, "b" => 2, "c" => 3, "e" => 5}
    expect(described_class.similar?(a, b)).to be_true
    expect(described_class.similar?(a, b, similarity: 1)).to be_false
  end

  it "is able to tell similiar empty hash" do
    expect(described_class.similar?(Hash(String, String).new, Hash(String, String).new, similarity: 1)).to be_true
  end

  it "is able to tell similiar empty array" do
    expect(described_class.similar?([] of String, [] of String, similarity: 1)).to be_true
  end

  it "is able to tell similiar hash with values within tolerance" do
    a = {"a" => 1.5, "b" => 2.25, "c" => 3, "d" => 4, "e" => 5}
    b = {"a" => 1.503, "b" => 2.22, "c" => 3, "e" => 5}
    expect(described_class.similar?(a, b, numeric_tolerance: 0.05)).to be_true
    expect(described_class.similar?(a, b)).to be_false
  end

  it "is able to tell numbers and strings" do
    expect(described_class.similar?(1, 2)).to be_false
    expect(described_class.similar?("a", "b")).to be_false
    expect(described_class.similar?("a", [1, 2, 3])).to be_false
    expect(described_class.similar?(1, {"a" => 1, "b" => 2, "c" => 3, "e" => 5})).to be_false
  end

  it "is able to tell true when similarity == 0.5" do
    a = {"value" => "New1", "onclick" => "CreateNewDoc()"}
    b = {"value" => "New", "onclick" => "CreateNewDoc()"}

    expect(described_class.similar?(a, b, similarity: 0.5)).to be_true
  end

  it "is able to tell false when similarity == 0.5" do
    a = {"value" => "New1", "onclick" => "open()"}
    b = {"value" => "New", "onclick" => "CreateNewDoc()"}

    expect(described_class.similar?(a, b, similarity: 0.5)).to be_false
  end

  describe ".compare_values" do
    it "compares numeric values exactly when no tolerance" do
      expect(described_class.compare_values(10.004, 10.003)).to be_false
    end

    it "allows tolerance with numeric values" do
      expect(described_class.compare_values(10.004, 10.003, numeric_tolerance: 0.01)).to be_true
    end

    it "compares different objects without tolerance" do
      expect(described_class.compare_values("hats", "ninjas")).to be_false
    end

    it "compares other objects with tolerance" do
      expect(described_class.compare_values("hats", "ninjas", numeric_tolerance: 0.01)).to be_false
    end

    it "compares same objects without tolerance" do
      expect(described_class.compare_values("horse", "horse")).to be_true
    end

    it "compares strings for spaces exactly by default" do
      expect(described_class.compare_values(" horse", "horse")).to be_false
    end

    it "compares strings for capitalization exactly by default" do
      expect(described_class.compare_values("horse", "Horse")).to be_false
    end

    it "strips strings before comparing when requested" do
      expect(described_class.compare_values(" horse", "horse", strip: true)).to be_true
    end

    it "ignores string case when requested" do
      expect(described_class.compare_values("horse", "Horse", case_insensitive: true)).to be_true
    end
  end

  describe ".comparable?" do
    it "identifies hashes as comparable" do
      expect(described_class.comparable?(Hash(String, String).new, Hash(String, String).new)).to be_true
    end

    it "identifies a subclass of Hash to be comparable with a Hash" do
      other = THash
      expect(described_class.comparable?(other.new, Hash(String, String).new)).to be_true
    end

    it "identifies a Hash to be comparable with a subclass of Hash" do
      other = THash
      expect(described_class.comparable?(Hash(String, String).new, other.new)).to be_true
    end

    it "does not identify a Numeric as comparable with a Hash" do
      expect(described_class.comparable?(1, Hash(String, String).new)).to be_false
    end
  end
end
