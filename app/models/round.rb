require 'pry'
class Round < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :game
  @@current_round = ""
  @@question = ""
  @@ingredients = ""
  @@choices = ""
  @@answer = ""

  def self.current_round
    @@current_round
  end

  def self.question
    @@question
  end

  def self.ingredients
    @@ingredients
  end

  def self.choices
    @@choices
  end

  def self.answer
    @@answer
  end

  def self.create_round
    @@current_round = self.create(game_id: Game.new_game.id, correct?: 0)
  end

  def self.get_questions_and_answers
    i = rand(Recipe.all.length)
    xx = rand(choices.length+1)
    @@answer = Recipe.all[i].drink
    id = Recipe.all[i].id.to_i
    @@question = Recipe.all[i].instructions
    @@ingredients = Recipe.all[i].ingredients
    @@choices = Recipe.all[i].incorrect.split(",")
    @@choices.insert(xx, @@answer)
    @@current_round.update(recipe_id: id)
  end

  def self.play_game
    self.get_questions_and_answers
    puts
    puts "Here's how to make the drink:".cyan
    puts "#{self.question}\n".magenta
    puts "It's ingredients are: ".cyan + "#{self.ingredients}".magenta
    puts "\nWhat's your guess?".cyan + " FYI SPELLING MATTERS\n".cyan.bold
    self.choices.each {|choice| puts "* " + "#{choice}".green.bold}
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
    puts "#{self.question}".cyan
    puts
    self.choices.each {|choice| puts "*" + " #{choice}".green}
  end

  def self.save_round(user_answer)
     if user_answer.downcase == @@answer.downcase
       round = @@current_round.update(correct?: true)
       puts "\nWell done!".cyan
       puts "You added ".cyan + "10 points".green.bold + " to your score!".cyan
       puts
     else
       round = @@current_round.update(incorrect?: false)
       puts "\nHmm... that's not quite right.".cyan
       puts "The correct answer is".cyan + " #{@@answer.green.bold}.\n"
       puts
     end
  end




end
