require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Arthur") }
  let(:pie) {Dessert.new("chocolate pie", 5, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(pie.type).to eq("chocolate pie")
    end
    it "sets a quantity" do
      expect(pie.quantity).to eq(5)
    end
    it "starts ingredients as an empty array" do 
      expect(pie.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("chocolate pie", "five", chef)} to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
    pie.add_ingredient("chocolate")
    expect (pie.ingredients).to eq(["chocolate"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      pie.ingredients = ["chocolate", "flour", "sugar", "butter"]
      expect(pie.mix!).to be(pie.ingredients.shuffle!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(pie.eat(3)).to eq(2)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect {pie.eat(9)} to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(pie.serve).to eq("Chef Arthur the Great Baker has made 5 chocolate pies")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(pie)
      pie.make_more
    end
  end
end
