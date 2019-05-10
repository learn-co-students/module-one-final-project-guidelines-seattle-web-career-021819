class User < ActiveRecord::Base
  has_many :games

  def total
     points = self.games.map { |game| game.game_points }.inject(:+)
     # make points 0 instead of nil if no games have been played
     points = points.nil? ? 0 : points
     self.update(total_points: points)
     puts "You have scored #{"#{points} points".green.bold} over #{"#{self.games.count} game(s)".green.bold}!"
  end

end
