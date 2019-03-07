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
    @@current_round = self.create(correct?: 0, incorrect?: 0, recipe_id: nil, game_id: Game.new_game.id)
  end

  def self.get_questions_and_answers
    i = rand(Recipe.all.length)
    xx = rand(choices.length+1)
    @@answer = Recipe.all[i].drink
    id = Recipe.all[i].id.to_i
    @@question = Recipe.all[i].questions
    @@choices = Recipe.all[i].incorrect.split(",")
    @@choices.insert(xx, @@answer)
    @@current_round.update(recipe_id: id)
  end

  def self.play_game
    self.get_questions_and_answers
    puts "#{self.question}"
    puts
    self.choices.each {|choice| puts "* #{choice}"}
  end


  def self.get_questions_and_answers_hard
    i = rand(Recipe.all.length)
    xx = rand(choices.length+1)
    @@answer = Recipe.all[i].drink
    id = Recipe.all[i].id.to_i
    @@question = Recipe.all[i].ingredients
    @@choices = Recipe.all[i].incorrect.split(",")
    @@choices.insert(xx, @@answer)
    @@current_round.update(recipe_id: id)
  end

  def self.play_game_hard
    self.get_questions_and_answers_hard
    puts "#{self.question}"
    puts
    self.choices.each {|choice| puts "* #{choice}"}
  end

def self.save_round(user_answer)
   if user_answer.downcase == @@answer.downcase
     round = @@current_round.update(correct?: true)
     puts "\nWell done! You know your cocktails."
     puts "You added 10 points to your score!".blue
     puts
   else
     round = @@current_round.update(incorrect?: false)
     puts "\nHmm... that's not quite right."
     puts "Might want to drink more.".blue
     puts
   end
end




end
