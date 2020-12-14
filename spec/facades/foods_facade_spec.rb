require 'rails_helper'

describe 'Foods Facade'do
  it 'returns foods containing a keyword' do
    foods = FoodsFacade.foods_containing("sweet potatoes")

    expect(foods).to be_an(Array)
    expect(foods.size).to eq(10)
    expect(foods.first).to be_an_instance_of(Food)
  end

  it 'returns count of foods containing a keyword' do
    count = FoodsFacade.count_of_foods_containing("sweet potatoes")

    expect(count).to eq(39244)
  end
end
