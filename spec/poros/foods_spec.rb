require "rails_helper"

describe Food do
  it "exists and has attributes" do
    attrs = {
      description: "SWEET POTATOES",
      gtinUpc: "070560951975",
      brandOwner: "The Pictsweet Company",
      ingredients: "SWEET POTATOES."
    }

    food = Food.new(attrs)
    
    expect(food).to be_a Food
    expect(food.upc).to eq("070560951975")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand).to eq("The Pictsweet Company")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
