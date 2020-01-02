require './enumerable_methods.rb'

RSpec.describe ('enumerable methods') do
  describe "#my_all?" do
    it "is true if all its items are true" do
      expect([1,2,3,4,5].my_all? {|item| item <= 5}).to eql(true)
    end
    it "is false if only one item is false" do
      expect(["Sam", "Sally", "Donald", "Sandy", "Sean"].my_all? {|item| item.start_with?("S")}).to eql(false)
    end
    it "is false if only its first item is false" do
      expect([9,8,4,6,220].my_all? {|item| item % 2 == 0}).to eql(false)
    end
    it "is false if only its last item is false" do
      expect(["John", "Mary", "Lisa", "Dan"].my_all? {|name| name.length == 4}).to eql(false)
    end
    it "is false if all its items are false" do
      expect([25,31,38,2,-5].my_all? {|item| item % 3 == 0}).to eql(false)
    end
    it "is false if only one item is true" do
      expect([1.1,2.2,3,4.4,5.5].my_all? {|item| item.class == Integer}).to eql(false)
    end
  end
  describe "#my_any?" do
    it "is true if all its items are true" do
      expect([1,2,3,4,5].my_all? {|item| item <= 5}).to eql(true)
    end
    it "is true if only one item is false" do
      expect(["Sam", "Sally", "Donald", "Sandy", "Sean"].my_any? {|item| item.start_with?("S")}).to eql(true)
    end
    it "is true if only its first item is false" do
      expect([9,8,4,6,220].my_any? {|item| item % 2 == 0}).to eql(true)
    end
    it "is true if only its last item is false" do
      expect(["John", "Mary", "Lisa", "Dan"].my_any? {|name| name.length == 4}).to eql(true)
    end
    it "is false if all its items are false" do
      expect([25,31,38,2,-5].my_any? {|item| item % 3 == 0}).to eql(false)
    end
    it "is true if only one item is true" do
      expect([1.1,2.2,3,4.4,5.5].my_any? {|item| item.class == Integer}).to eql(true)
    end
  end
  describe "#my_none?" do
    it "is false if all its items are true" do
      expect([1,2,3,4,5].my_none? {|item| item <= 5}).to eql(false)
    end
    it "is false if only one item is false" do
      expect(["Sam", "Sally", "Donald", "Sandy", "Sean"].my_none? {|item| item.start_with?("S")}).to eql(false)
    end
    it "is false if only its first item is false" do
      expect([9,8,4,6,220].my_none? {|item| item % 2 == 0}).to eql(false)
    end
    it "is false if only its last item is false" do
      expect(["John", "Mary", "Lisa", "Dan"].my_none? {|name| name.length == 4}).to eql(false)
    end
    it "is true if all its items are false" do
      expect([25,31,38,2,-5].my_none? {|item| item % 3 == 0}).to eql(true)
    end
    it "is false if only one item is true" do
      expect([1.1,2.2,3,4.4,5.5].my_none? {|item| item.class == Integer}).to eql(false)
    end
  end
    describe "#my_count" do
    it "is array.size if all its items are true" do
      expect([1,2,3,4,5].my_count {|item| item <= 5}).to eql(5)
    end
    it "is array.size-1 if only one item is false" do
      expect(["Sam", "Sally", "Donald", "Sandy", "Sean"].my_count {|item| item.start_with?("S")}).to eql(4)
    end
    it "is array.size-1 if only its first item is false" do
      expect([9,8,4,6,220].my_count {|item| item % 2 == 0}).to eql(4)
    end
    it "is array.size-1 if only its last item is false" do
      expect(["John", "Mary", "Lisa", "Dan"].my_count {|name| name.length == 4}).to eql(3)
    end
    it "is 0 if all its items are false" do
      expect([25,31,38,2,-5].my_count {|item| item % 3 == 0}).to eql(0)
    end
    it "is 1 if only one item is true" do
      expect([1.1,2.2,3,4.4,5.5].my_count {|item| item.class == Integer}).to eql(1)
    end
  end

end


