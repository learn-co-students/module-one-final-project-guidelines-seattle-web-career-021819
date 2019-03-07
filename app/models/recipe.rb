require 'pry'
class Recipe < ActiveRecord::Base
  has_many :rounds

  def self.run_game
    hello = Array.new(Recipe.all)
    binding.pry
  end

end
