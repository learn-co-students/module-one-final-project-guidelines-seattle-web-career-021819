require 'pry'
class Round < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :game
  @@current_round = ""
  @@question = ""
  @@choices = ""
  @@answer = ""

  def self.current_round
    @@current_round
  end

  def self.question
    @@question
  end

  def self.choices
    @@choices
  end

  def self.answer
    @@answer
  end

  def self.create_round
    @@current_round = self.create(correct?: nil, incorrect?: nil, recipe_id: nil, game_id: Game.new_game.id)
  end

  def self.get_questions_and_answers
    i = rand(Recipe.all.length)
    xx = rand(choices.length+1)
    @@answer = Recipe.all[i].drink
    id = Recipe.all[i].id.to_i
    @@question = Recipe.all[i].questions
    @@choices = Recipe.all[i].incorrect.split(",")
    @@choices.insert(xx, @@answer)
    binding.pry
    @@current_round.update(recipe_id: id)
  end

  def self.save_round(user_answer)
    if user_answer.downcase == @@answer.downcase
      round = @@current_round.update(correct?: true)
    else
      round = @@current_round.update(incorrect?: false)
    end
  end
end
