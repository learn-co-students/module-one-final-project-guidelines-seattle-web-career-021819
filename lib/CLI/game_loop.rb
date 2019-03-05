def start_game(user)
  initiate_game(user)
  question_loop
end

def initiate_game(user)
  new_game = Game.create
  new_game_session = GameSession.new(user_id: user.id, game_id: new_game.id)

  Question.delete_all
  TriviaApi.get_questions.each do |question|
    Question.create(question)
  end
end

def question_loop
  Question.all.each do |quest|
    puts quest.question
    answer_hash = shuffle_and_print_answers(quest)
    puts
    puts"Enter your answer:"
    user_input = gets.chomp
    #take letter or text?
    check_answer(quest, answer_hash, user_input)
  end
end


def shuffle_and_print_answers(question)
  answers = [
    question.correct,
    question.incorrect1,
    question.incorrect2,
    question.incorrect3
  ].shuffle

  hash = {}
  letter = "A"
  answers.each do |answer|
    puts "#{letter}. #{answer}"
    hash[letter] = answer
    letter = letter.next
  end
  return hash
end

def check_answer(quest, answer_hash, user_input)
  #track points in game_session. store correctness?
  if answer_hash[user_input.upcase] == quest.correct || user_input.downcase == quest.correct.downcase
    puts "Correct".colorize(:green)
    puts
  else
    puts "Bearly missed it.".colorize(:red)
    puts
    puts "The correct answer was: #{quest.correct}"
    puts
  end
end




def game_show_print(question)

end
