class FoodsFacade
  def self.foods_containing(keyword)
    FoodsService.foods_containing(keyword)[:foods].map do |food_data|
      Food.new(food_data)
    end
  end

  def self.count_of_foods_containing(keyword)
    FoodsService.foods_containing(keyword)[:totalHits]
  end
end
