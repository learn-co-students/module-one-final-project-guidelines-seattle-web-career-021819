$game_session = nil
$MAX_QUESTIONS = 10

def start_game(user)
  initiate_game(user)
  question_loop
  end_message
  play_again?(user)
end

def clear_all
  GameSession.delete_all
  UserGuess.delete_all
  #Question.delete_all
end

def initiate_game(user)
  clear_all
  $game_session = GameSession.create(user_id: user.id)
end

def question_loop
  system "clear"
  counter = 0

  Question.all.each do |quest|
    return if counter == $MAX_QUESTIONS

    # Skip question if not the right difficulty for current round
    if (counter < 5 && quest.difficulty != "easy" ||
        (5...7).include?(counter) && quest.difficulty != "medium" ||
        counter > 7 && quest.difficulty != "hard")
      next
    end

    counter += 1
    answer_hash = shuffle_and_print_answers(quest)
    puts

    puts "(#{quest.difficulty.capitalize}, $#{quest.score})"
    puts "Enter your answer:"
    user_input = gets.chomp
    check_answer(quest, answer_hash, user_input)
    #sleep(3)
    system "clear"
  end
end


def shuffle_and_print_answers(question)
  answers = [
    question.correct,
    question.incorrect1,
    question.incorrect2,
    question.incorrect3
  ].shuffle

  answers_hash = {}
  letter = "A"
  answers.each do |answer|
    answers_hash[letter] = answer
    letter = letter.next
  end

  puts question.question.center(80)
  puts
  puts print_answers(answers_hash)
  return answers_hash
end

def check_answer(quest, answer_hash, user_input)
  #track points in game_session. store correctness?
  correctness = answer_hash[user_input.upcase] == quest.correct
  system "clear"
  puts quest.question.center(80)
  puts
  puts print_colorized_answers(answer_hash, user_input.upcase, quest.correct)
  puts

  if correctness
    puts "Pawesome!".colorize(:green)
    puts
  else
    puts "Bearly missed it.".colorize(:red)
    puts
  end

  UserGuess.create(
    question_id: quest.id,
    game_session_id: $game_session.id,
    correctness: correctness
  )
end

def show_answer()
  system "clear"
  print_answers
end

def print_answers(answers)
  Terminal::Table.new do |t|
    t.add_row ["A. #{answers["A"]}", "B. #{answers["B"]}"]
    t.add_row ["C. #{answers["C"]}", "D. #{answers["D"]}"]
    t.style = {:all_separators => true, :width => 80}
  end
end

# Colors the correct answer in green and wrong guess in red
def print_colorized_answers(answers, guess, correct)
  colorized_ans = answers.map do |letter, answer|
    if answer == answers[guess]
      "#{letter}. #{answer}".colorize(:green)
    elsif answer == correct
      "#{letter}. #{answer}".colorize(:red)
    else
      "#{letter}. #{answer}"
    end
  end

  Terminal::Table.new do |t|
    t.add_row [
      colorized_ans[0],
      colorized_ans[1]
    ]
    t.add_row [
      colorized_ans[2],
      colorized_ans[3]
    ]
    t.style = {:all_separators => true, :width => 80}
  end
end

def end_message
  puts "Thanks for playing!"
  print "You got #{$game_session.get_correct_questions.length} questions correct "
  print "with total earnings of $#{$game_session.total_score}!!"
  puts
end

def play_again?(user)
  puts "Would you like to play again? (yes/no)"
  user_input = gets.chomp
  if user_input.start_with?("y")
    start_game(user)
  else
    puts "Goodbye!"
    return
  end
end
