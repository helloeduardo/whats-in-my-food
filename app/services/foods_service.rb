class FoodsService
  def self.foods_containing(keyword)
    get_json("/v1/foods/search?query=#{keyword}")
  end

  def self.conn
   Faraday.new(url: 'https://api.nal.usda.gov/fdc') do |faraday|
     faraday.headers['x-api-key'] = ENV['FDC_API_KEY']
   end
 end

   def self.get_json(url)
     response = conn.get(url)
     JSON.parse(response.body, symbolize_names: true)
   end
end
