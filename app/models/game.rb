class Game < ActiveRecord::Base
  belongs_to :user
  has_many :rounds

  @@new_game = ""

  def self.create_game
    @@new_game = self.create(user_id: User.current_user.id, number_correct: 0, number_incorrect: 0, game_points: 0)
  end

  def self.new_game
    @@new_game
  end

  def self.save_game
    correct_num = Round.count(:correct?)
    points = correct_num * 10
    @@new_game.update(number_correct: correct_num, number_incorrect: Round.count(:incorrect?), game_points: points)
  end

end
