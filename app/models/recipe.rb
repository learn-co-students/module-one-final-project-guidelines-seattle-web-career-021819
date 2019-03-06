
class Recipe < ActiveRecord::Base
  has_many :rounds

  @@current_recipe = ""

  def self.current_recipe
    @@current_recipe = 3
  end

end
