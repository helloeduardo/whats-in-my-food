class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.foods_containing(params[:q])
    @foods_count = FoodsFacade.count_of_foods_containing(params[:q])
  end
end
