class Round < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :game

  attr_accessor :instructions, :ingredients, :choices, :answer

  def get_questions_and_answers
    random_recipe = Recipe.all.sample
    self.instructions = random_recipe.instructions
    self.ingredients = random_recipe.ingredients
    self.answer = random_recipe.drink
    wrong_answers = Recipe.where.not(drink: self.answer).sample(3).map {|recipe| recipe.drink}
    self.choices = wrong_answers << self.answer
  end

  def play_game
    self.get_questions_and_answers
    puts <<~PLAY_GAME

    #{question_heading("It's ingredients are:")} #{self.ingredients.strip.cyan}

    #{question_heading("Here's how to make the drink:")} #{self.instructions.strip.cyan}

    #{"What's your guess? #{"FYI SPELLING MATTERS".bold}".cyan}

    PLAY_GAME
    self.choices.each {|choice| puts "• #{choice.strip.green.bold}"}
  end

  def play_game_hard
    self.get_questions_and_answers
    puts <<~PLAY_GAME_HARD

    #{question_heading("Here's how to make the drink:")} #{self.ingredients.strip.cyan}

    PLAY_GAME_HARD
    self.choices.each {|choice| puts "• #{choice.strip.green}"}
  end

  def save_round(user_answer)
     if user_answer.downcase == self.answer.downcase
       self.update(correct?: true)
       puts <<~RIGHT_ANSWER

       #{"Well done!".bold.colorize(:color => :black, :background => :green)}
       #{"You added".cyan} #{"10 points".green.bold} #{"to your score!".cyan}

       RIGHT_ANSWER
     else
       self.update(incorrect?: false)
       puts <<~WRONG_ANSWER

       #{"Hmm... that's not quite right.".bold.colorize(:color => :black, :background => :red)}
       #{"The correct answer is".cyan} #{self.answer.green.bold}.

       WRONG_ANSWER
     end
  end

  def question_heading(string)
    string.bold.colorize(:color => :black, :background => :cyan)
  end

end
