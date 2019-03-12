class Game < ActiveRecord::Base
  belongs_to :user
  has_many :rounds

  def save_game
    correct_num = self.rounds.map { |round| round.correct? }.inject(:+)
    points = correct_num * 10
    self.update(number_correct: correct_num, game_points: points)
    puts "You scored #{"#{points} points".green.bold} on this game!"
    self.user.total
    if points < 30
      puts "Might want to drink more. Return to your local watering hole.\n".magenta.italic
    else
      puts "You're one step closer to earning your mixology degree.\n".magenta.italic
    end
  end

  def easy_game
    4.times do
      round = Round.create(game: self, correct?: 0)
      round.play_game
      answer = STDIN.gets.chomp
      round.save_round(answer)
    end
  end

  def hard_game
    4.times do
      round = Round.create(game: self, correct?: 0)
      round.play_game_hard
      answer = STDIN.gets.chomp
      round.save_round(answer)
    end
  end

end
