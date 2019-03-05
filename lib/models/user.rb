class User < ActiveRecord::Base
  has_many :games, through: :game_result
end
