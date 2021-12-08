require "../../spec_helper"

Spectator.describe K8S::Hashdiff::LinearCompareArray do
  let(described_class) { K8S::Hashdiff::LinearCompareArray }

  it "finds no differences between two empty arrays" do
    difference = described_class.call([] of String, [] of String)
    expect(difference).to match [] of String
  end

  it "finds added items when the old array is empty" do
    difference = described_class.call([] of String, %i[a b])
    expect(difference).to match [{"+", "[0]", :a}, {"+", "[1]", :b}]
  end

  it "finds removed items when the new array is empty" do
    difference = described_class.call(
      %i[a b],
      [] of String,
    )
    expect(difference).to match [{"-", "[1]", :b}, {"-", "[0]", :a}]
  end

  it "finds no differences between identical arrays" do
    difference = described_class.call(%i[a b], %i[a b])
    expect(difference).to match [] of String
  end

  it "finds added items in an array" do
    difference = described_class.call(%i[a d], %i[a b c d])
    expect(difference).to match [{"+", "[1]", :b}, {"+", "[2]", :c}]
  end

  it "finds removed items in an array" do
    difference = described_class.call(%i[a b c d e f], %i[a d f])
    expect(difference).to match [{"-", "[4]", :e}, {"-", "[2]", :c}, {"-", "[1]", :b}]
  end

  it "shows additions and deletions as changed items" do
    difference = described_class.call(%i[a b c], %i[c b a])
    expect(difference).to match [{"~", "[0]", :a, :c}, {"~", "[2]", :c, :a}]
  end

  it "shows changed items in a hash" do
    difference = described_class.call([{a: :b}], [{a: :c}])
    expect(difference).to match [{"~", "[0].a", :b, :c}]
  end

  it "shows changed items and added items" do
    difference = described_class.call([{a: 1, b: 2}], [{a: 2, b: 2}, :item])
    expect(difference).to match [{"~", "[0].a", 1, 2}, {"+", "[1]", :item}]
  end
end
