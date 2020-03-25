class User < ActiveRecord::Base
  has_many :game_sessions
end
