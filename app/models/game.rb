class Game < ActiveRecord::Base
  belongs_to :user
  has_many :rounds

  @@new_game = ""

  def self.create_game
    @@new_game = self.create(user_id: User.current_user.id, game_points: 0)
  end

  def self.new_game
    @@new_game
  end

  def self.save_game
    array = Round.all.select { |round| round.game_id == @@new_game.id}
    correct_num = array.map { |xx| xx.correct? }.inject(:+)
    points = correct_num * 10
    @@new_game.update(number_correct: correct_num, game_points: points)
    puts "You scored " + "#{points} points ".green.bold + "on this game!"
    User.total
    if points < 30
      puts "Might want to drink more. Return to your local watering hole.\n".magenta.italic
    else
      puts "You're one step closer to earning your mixology degree.\n".magenta.italic
    end
  end

end
