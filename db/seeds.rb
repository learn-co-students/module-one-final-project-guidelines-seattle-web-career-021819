TriviaApi.get_questions(amount: "100", difficulty: "easy").each do |question|
  Question.create(question)
end
TriviaApi.get_questions(amount: "50", difficulty: "medium").each do |question|
  Question.create(question)
end
TriviaApi.get_questions(amount: "25", difficulty: "hard").each do |question|
  Question.create(question)
end
