TriviaApi.get_questions(amount: "100", difficulty: "easy").shuffle.each do |question|
  Question.create(question)
end
TriviaApi.get_questions(amount: "50", difficulty: "medium").shuffle.each do |question|
  Question.create(question)
end
TriviaApi.get_questions(amount: "25", difficulty: "hard").shuffle.each do |question|
  Question.create(question)
end
