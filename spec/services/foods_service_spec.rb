require 'rails_helper'

describe FoodsService do
  describe "class methods" do
    it "#foods_containing(keyword)" do
      results = FoodsService.foods_containing("sweet%20potatoes")

      expect(results).to be_a(Hash)
      expect(results).to have_key(:totalHits)
      expect(results).to have_key(:foods)

      expect(results[:foods]).to be_a(Array)
      expect(results[:foods].count).to eq(10)

      expect(results[:foods].first).to have_key(:description)
      expect(results[:foods].first).to have_key(:gtinUpc)
      expect(results[:foods].first).to have_key(:brandOwner)
      expect(results[:foods].first).to have_key(:ingredients)
    end
  end
end
