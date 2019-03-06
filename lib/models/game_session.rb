class GameSession < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  def get_correct_questions
    UserGuess.all.select {|guess| guess.correctness}
  end

  def total_score
    self.get_correct_questions.inject(0){|sum, guess| sum + guess.question.score}
  end

  def guess_record
    UserGuess.all.map {|guess| guess.correctness}
  end
end
