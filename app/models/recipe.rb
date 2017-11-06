require 'httparty'

class Recipe
  attr_reader :response

  def initialize(id)
    @response = HTTParty.get("http://api.xivdb.com/recipe/#{id}/")
  end

  def name
    @response["name"]
  end

  def ingredients
    ingredients = []
    quantities = []
    @response["tree"].each do |i|
      ingredients << i["name"]
      quantities << i["quantity"]
    end
    ingredients
  end
end
