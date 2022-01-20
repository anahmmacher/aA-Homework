require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.instance_variable_get(:@type)).to eq(type)

    it "sets a quantity" do
      expect(dessert.instance_variable_get(:@quantity)).to eq(quantity)
    it "starts ingredients as an empty array" do 
      expect(dessert.instance_variable_get(:@ingredients).to eq([])
    it "raises an argument error when given a non-integer quantity" do
      expect {} to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
    expect (dessert.add_ingredient(ingredient)).to 
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      @ingredients.shuffle!
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      @quantity -= amount
    it "raises an error if the amount is greater than the quantity"
      expect {amount > @quantity} to raise_error("not enough left!")
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
