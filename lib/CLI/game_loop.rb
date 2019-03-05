def start_game(user)
  initiate_game(user)
  question_loop
end

def initiate_game(user)
  new_game = Game.create
  new_game_session = GameSession.new(user_id: user.id, game_id: new_game.id)
  TriviaApi.get_questions.each do |question|
    Question.create(question)
  end
end

def question_loop
  Question.all.each do |quest|
    puts quest.question
    answers = [correct, incorrect1, incorrect2, incorrect3].scramble
    binding.pry
  end
end
