TRIVIA_API = "https://opentdb.com/api.php?"

class TriviaApi
  def self.get_json(amount:, category:, difficulty:, type:)
    api_url =
      "#{TRIVIA_API}" +
      "amount=#{amount}" +
      "&difficulty=#{difficulty}" +
      "&type=#{type}"
    response = RestClient.get(api_url)
    json = JSON.parse(response.body)
  end

  def self.get_questions(amount: "10", category: "", difficulty: "easy", type: "multiple")
    data = self.get_json(
      amount: amount,
      category: category,
      difficulty: difficulty,
      type: type
    )

    points = {"easy" => 5, "medium" => 10, "hard" => 20}

    data["results"].map do |question_data|
      # Make sure the quesion_data is valid before saving to db
      next if (!self.is_valid_question_data(question_data))

      {
        question: self.decode_string(question_data["question"]),
        correct: self.decode_string(question_data["correct_answer"]),
        incorrect1: self.decode_string(question_data["incorrect_answers"][0]),
        incorrect2: self.decode_string(question_data["incorrect_answers"][1]),
        incorrect3: self.decode_string(question_data["incorrect_answers"][2]),
        difficulty: difficulty,
        score: points[question_data["difficulty"]],
        used: false
      }
    end
  end

  # Changes html characters to their literal form
  def self.decode_string(string)
    HTMLEntities.new.decode(string)
  end

  # Sometimes API returns incomplete data
  def self.is_valid_question_data(question)
    # Just making sure these aren't nil
    question["question"] &&
    question["correct_answer"] &&
    question["incorrect_answers"] &&
    question["incorrect_answers"].size == 3 &&
    self.decode_string(question["incorrect_answers"][0]).length < 40 &&
    self.decode_string(question["incorrect_answers"][1]).length < 40 &&
    self.decode_string(question["incorrect_answers"][2]).length < 40
  end
end
