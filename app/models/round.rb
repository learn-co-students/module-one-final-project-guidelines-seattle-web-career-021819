require 'pry'
class Round < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :game
  @@current_round = ""

  def self.create_round
    @@current_round = self.create(correct?: nil, incorrect?: nil, recipe_id: nil, game_id: Game.new_game.id)
  end

  def self.current_round
    @@current_round
  end

  def self.get_questions_and_answers
    i = rand(Recipe.all.length)
    question = Recipe.all[i].questions
    answer = Recipe.all[i].drink
    incorrect = Recipe.all[i].incorrect
    id = Recipe.all[i].id.to_i
    @@current_round.update(recipe_id: id)
  end

  def self.save_round(answer)
    if answer == true
      round = @@current_round.update(correct?: true)
    else
      round = @@current_round.update(incorrect?: false)
    end
  end
end
