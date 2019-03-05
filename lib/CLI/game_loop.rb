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
    answers = [
      quest.correct,
      quest.incorrect1,
      quest.incorrect2,
      quest.incorrect3
    ].shuffle
  end
end

def pretty_print_question(question)

end
