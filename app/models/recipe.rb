class Recipe < ActiveRecord::Base
has_many :recommended_dishes
has_many :users, through: :recommended_dishes
end
