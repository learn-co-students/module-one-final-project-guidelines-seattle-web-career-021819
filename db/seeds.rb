TriviaApi.get_questions(amount: "250", difficulty: "easy").shuffle.each do |question|
  Question.create(question)
end
TriviaApi.get_questions(amount: "150", difficulty: "medium").shuffle.each do |question|
  Question.create(question)
end
TriviaApi.get_questions(amount: "100", difficulty: "hard").shuffle.each do |question|
  Question.create(question)
end
