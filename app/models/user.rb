class User < ActiveRecord::Base
has_many :recommended_dishes
has_many :recipes, through: :recommended_dishes

end
