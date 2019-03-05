class User < ActiveRecord::Base
  has_many :favorites
  has_many :recipes, through: :favorites

  def add_favorite(recipe)
    binding.pry
    self.favorites << recipe
    binding.pry
  end

end
