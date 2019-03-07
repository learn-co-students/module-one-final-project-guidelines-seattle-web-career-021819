class Game < ActiveRecord::Base
  belongs_to :user
  has_many :rounds

  @@new_game = ""

  def self.create_game
    @@new_game = self.create(user_id: User.current_user.id, number_correct: nil, number_incorrect: nil, game_points: nil)
  end

  def self.new_game
    @@new_game
  end

  def self.save_game
    array = Round.all.select { |round| round.game_id == @@new_game.id}
    correct_num = array.map { |xx| xx.correct? }.inject(:+)
    points = correct_num * 10
    @@new_game.update(number_correct: correct_num, number_incorrect: Round.count(:incorrect?), game_points: points)
    puts "you scored #{points} on this game!"

  end




end
