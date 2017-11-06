equire 'httparty'

class Recipe < ActiveRecord::Base
  def initialize
    @response = HTTParty.get("https://api.xivdb.com/recipe/")
  end
end
