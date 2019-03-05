TRIVIA_API = "https://opentdb.com/api.php?"

class TriviaApi
  def self.get_json(amount: "10", category: "9", difficulty: "easy", type: "multiple")
    api_url = "
      #{TRIVIA_API}
      amount=#{amount}
      &category=#{category}
      &difficulty=#{difficulty}
      &type=#{type}
    "
    response = RestClient.get(api_url)
    json = JSON.parse(response.body)
  end

  def self.get_questions
    data = self.get_json["results"]
    points = {"easy" => 5, "medium" => 10, "hard" => 20}
    question_hash = {}

    data.each do |question|
      question_hash["question"] = question["question"]
      question_hash["correct"] = question["correct_answer"]
      question_hash["incorrect1"] = question["incorrect_answers"][0]
      question_hash["incorrect2"] = question["incorrect_answers"][1]
      question_hash["incorrect3"] = question["incorrect_answers"][2]
      question_hash["score"] = points[question["difficulty"]]
    end

    question_hash
  end
end
