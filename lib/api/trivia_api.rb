TRIVIA_API = "https://opentdb.com/api.php?"

class TriviaApi
  def self.get_json(amount:, category:, difficulty:, type:)
    api_url =
      "#{TRIVIA_API}" +
      "amount=#{amount}" +
      "&category=#{category}" +
      "&difficulty=#{difficulty}" +
      "&type=#{type}"
    response = RestClient.get(api_url)
    json = JSON.parse(response.body)
  end

  def self.get_questions(amount: "10", category: "9", difficulty: "easy", type: "multiple")
    data = self.get_json(
      amount: amount,
      category: category,
      difficulty: difficulty,
      type: type
    )
    points = {"easy" => 5, "medium" => 10, "hard" => 20}
    questions = []

    questions << data["results"].map do |question|
      {
        question: self.sanitize_string(question["question"]),
        correct: self.sanitize_string(question["correct_answer"]),
        incorrect1: self.sanitize_string(question["incorrect_answers"][0]),
        incorrect2: self.sanitize_string(question["incorrect_answers"][1]),
        incorrect3: self.sanitize_string(question["incorrect_answers"][2]),
        score: points[question["difficulty"]]
      }
    end

    questions
  end

  # Changes html characters to their literal form
  def self.sanitize_string(string)
    HTMLEntities.new.decode(string)
  end
end
