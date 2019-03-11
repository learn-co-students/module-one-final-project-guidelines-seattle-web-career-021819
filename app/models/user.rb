class User < ActiveRecord::Base
  has_many :games

  @@current_user = ""

  def self.create_or_find_user(user_name)
    @@current_user = self.find_or_create_by(name: user_name.downcase)
  end

  def self.current_user
    @@current_user
  end

  def self.total
     array = Game.all.select { |game| game.user_id == @@current_user.id}
     points = array.map { |game| game.game_points }.inject(:+)
     # make points 0 instead of nil if no games have been played
     points = points.nil? ? 0 : points
     @@current_user.update(total_points: points)
     puts "You have scored #{"#{points.to_s} points".green.bold} over #{"#{array.length} game(s)".green.bold}!"
  end

end
