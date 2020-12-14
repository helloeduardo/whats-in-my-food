require 'rails_helper'

describe FoodsService do
  describe "class methods" do
    describe "#foods_containing(keyword)" do
      results = FoodsService.foods_containing("sweet%20potatoes")
      require "pry"; binding.pry
    end
  end
end
