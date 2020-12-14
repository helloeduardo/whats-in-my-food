class FoodsService
  def self.foods_containing(keyword)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['FDC_API_KEY']}&query=#{keyword}&pageSize=10")
    JSON.parse(response.body, symbolize_names: true)
  end

  # def self.foods_containing(keyword)
  #   get_json("/v1/foods/search?query=#{keyword}")
  # end
  #
  # def self.conn
  #   Faraday.new(url: 'https://api.nal.usda.gov/fdc') do |faraday|
  #     faraday.params['api_key'] = ENV['FDC_API_KEY']
  #     faraday.params['pageSize'] = "10"
  #   end
  # end
  #
  # def self.get_json(url)
  #   response = conn.get(url)
  #   JSON.parse(response.body, symbolize_names: true)
  # end
end
