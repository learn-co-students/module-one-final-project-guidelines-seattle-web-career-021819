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
    puts <<~PLAY_GAME

    #{question_heading("It's ingredients are:")} #{self.ingredients.strip.cyan}

    #{question_heading("Here's how to make the drink:")} #{self.question.strip.cyan}

    #{"What's your guess? #{"FYI SPELLING MATTERS".bold}".cyan}

    PLAY_GAME
    self.choices.each {|choice| puts "• #{choice.strip.green.bold}"}
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
    puts <<~PLAY_GAME_HARD

    #{question_heading("Here's how to make the drink:")} #{self.question.strip.cyan}

    PLAY_GAME_HARD
    self.choices.each {|choice| puts "• #{choice.strip.green}"}
  end

  def self.save_round(user_answer)
     if user_answer.downcase == @@answer.downcase
       round = @@current_round.update(correct?: true)
       puts <<~RIGHT_ANSWER

       #{"Well done!".bold.colorize(:color => :black, :background => :green)}
       #{"You added".cyan} #{"10 points".green.bold} #{"to your score!".cyan}

       RIGHT_ANSWER
     else
       round = @@current_round.update(incorrect?: false)
       puts <<~WRONG_ANSWER

       #{"Hmm... that's not quite right.".bold.colorize(:color => :black, :background => :red)}
       #{"The correct answer is".cyan} #{@@answer.green.bold}.
       
       WRONG_ANSWER
     end
  end

  def self.question_heading(string)
    string.bold.colorize(:color => :black, :background => :cyan)
  end

end
