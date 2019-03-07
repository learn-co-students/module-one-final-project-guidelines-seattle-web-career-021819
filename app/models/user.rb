require 'pry'
class User < ActiveRecord::Base
  has_many :games

  @@current_user = ""

  def self.create_user(user_name)
    @@current_user = self.find_or_create_by(name: user_name.downcase)
  end

  def self.current_user
    @@current_user
  end

  def self.total
   array = Game.all.select { |game| game.user_id == @@current_user.id}
   binding.pry
   points = array.map { |xx| xx.game_points }.inject(:+)
   @@current_user.update(total_points: points)
   puts "You have scored #{points} over #{array.length} games!"
end



end
