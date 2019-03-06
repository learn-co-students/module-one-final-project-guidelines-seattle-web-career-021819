5.times do
  TriviaApi.get_questions(amount: "50", difficulty: "easy").shuffle.each do |question|
    Question.create(question)
  end
end

3.times do
  TriviaApi.get_questions(amount: "50", difficulty: "medium").shuffle.each do |question|
    Question.create(question)
  end
end

2.times do
  TriviaApi.get_questions(amount: "50", difficulty: "hard").shuffle.each do |question|
    Question.create(question)
  end
end

User.create(name: "Brian")
User.create(name: "Jen")
User.create(name: "Cody")
GameSession.create(user_id: 1, total_score: 10)
GameSession.create(user_id: 1, total_score: 100)
GameSession.create(user_id: 1, total_score: 15)
GameSession.create(user_id: 2, total_score: 25)
GameSession.create(user_id: 2, total_score: 50)
GameSession.create(user_id: 2, total_score: 60)
GameSession.create(user_id: 3, total_score: 20)
GameSession.create(user_id: 3, total_score: 110)
GameSession.create(user_id: 3, total_score: 105)
GameSession.create(user_id: 1, total_score: 5)
GameSession.create(user_id: 2, total_score: 30)
