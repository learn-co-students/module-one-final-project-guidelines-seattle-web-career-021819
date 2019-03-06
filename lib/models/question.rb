class Question < ActiveRecord::Base
  belongs_to :game_session

  def self.get_questions_by_difficulty(difficulty)
    Question.all.select {|question| question.difficulty == difficulty}
  end
end
