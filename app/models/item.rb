require 'httparty'

class Item
  attr_reader :response
  
  def initialize
    @response = HTTParty.get("http://api.xivdb.com/recipe")
  end

  def item_list
    item_list = []
    @response.each do |i|
      item_list << i["name"]
    end
    item_list
  end
end
