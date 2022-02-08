require "../../spec_helper"

struct ListTestObject < K8S::Kubernetes::Object; end

Spectator.describe K8S::Kubernetes::Resource::ListWrapper do
  let(subject) { K8S::Kubernetes::Resource::ListWrapper(ListTestObject) }

  it "should be able to create a new list" do
    expect(subject.new).to be_a(subject)
  end

  context "#initialize" do
    context "with no arguments" do
      it "should create an empty list" do
        expect(subject.new).to be_empty
      end
    end

    context "with a list of objects" do
      let(list) { [ListTestObject.new, ListTestObject.new] }

      it "should create a list with the objects" do
        expect(subject.new(list)[0]).to eq(list[0])
        expect(subject.new(list)[1]).to eq(list[1])
      end
    end

    context "with a list of unwrapped objects" do
      let(list) { [K8S::Internals::GenericObject.new, K8S::Internals::GenericObject.new] }

      it "should create a list with wrapped objects" do
        expect(subject.new(list)[0]).to eq(ListTestObject.new(list[0]))
        expect(subject.new(list)[1]).to eq(ListTestObject.new(list[1]))
        expect(subject.new(list).each.to_a.map(&.class)).to eq([ListTestObject, ListTestObject])
      end
    end
  end

  context "multiple structs" do
    let(list) { [K8S::Internals::GenericObject.new({foo: "bar"}), K8S::Internals::GenericObject.new({foo: "bazz"})] }

    context "with different underlying array" do
      it "should not be equal", focus: true do
        # puts subject.new(list).diff(subject.new(list.reverse)).map(&.to_a)
        expect(subject.new(list)).not_to eq(subject.new(list.reverse))
      end
    end

    context "with same underlying array" do
      it "should be equal" do
        expect(subject.new(list)).to eq(subject.new(list))
      end

      it "should reflect changes to the underlying array" do
        array = list
        sub1 = subject.new(array)
        sub2 = subject.new(array)
        expect(sub1).to eq(sub2)
        expect(sub1.size).to eq(2)
        expect(sub2.size).to eq(2)
        sub1 << ListTestObject.new
        expect(sub1).to eq(sub2)
        expect(sub1.size).to eq(3)
        expect(sub2.size).to eq(3)
      end
    end
  end

  context "#each" do
    let(list) { [ListTestObject.new, ListTestObject.new] }

    it "should iterate over the list" do
      expect(subject.new(list).each.to_a).to eq(list)
    end

    it "should yeild a wrapped value" do
      expect(subject.new(list).each.to_a.map(&.class)).to eq([ListTestObject, ListTestObject])
    end
  end

  context "#[]" do
    let(list) { [ListTestObject.new, ListTestObject.new] }

    it "should return a wrapped value" do
      expect(subject.new(list)[0]).to be_a(ListTestObject)
    end
  end
end
