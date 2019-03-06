class Round < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :game
end
