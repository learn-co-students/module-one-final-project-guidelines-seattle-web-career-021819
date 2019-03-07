class User < ActiveRecord::Base
  has_many :games

  @@current_user = ""

  def self.create_user(user_name)
    @@current_user = self.find_or_create_by(name: user_name.downcase, total_points: nil, win_lose_record: nil)
  end

  def self.current_user
    @@current_user
  end

  def self.save_game
    binding.pry
    array = Game.all.select { |round| round.game_id == @@new_game.id}
    correct_num = array.map { |xx| xx.correct? }.inject(:+)
    points = correct_num * 10
    @@new_game.update(number_correct: correct_num, number_incorrect: Game.count(:incorrect?), game_points: points)
    puts "you scored #{points} on this game!"

  end

end
