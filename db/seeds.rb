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
