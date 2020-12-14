class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.foods_containing(params[:q])
    @foods_count = FoodsFacade.count_of_foods_containing(params[:q])


    # response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['FDC_API_KEY']}&query=#{params[:q]}&pageSize=10")
    # data = JSON.parse(response.body, symbolize_names: true)
    # @foods_count = data[:totalHits]
  end
end
