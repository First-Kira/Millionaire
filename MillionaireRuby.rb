class MillionaireGame
  def initialize
    @questions = [
      { question: "What is the capital of France?", options: ["A. London", "B. Paris", "C. Rome", "D. Berlin"], answer: "B" },
      { question: "Which planet is known as the Red Planet?", options: ["A. Venus", "B. Mars", "C. Jupiter", "D. Saturn"], answer: "B" },
      { question: "What is the chemical symbol for water?", options: ["A. H2O", "B. CO2", "C. O2", "D. NaCl"], answer: "A" },
      { question: "Who wrote 'Romeo and Juliet'?", options: ["A. William Shakespeare", "B. Charles Dickens", "C. Mark Twain", "D. Jane Austen"], answer: "A" },
      { question: "What is the largest mammal in the world?", options: ["A. Elephant", "B. Blue Whale", "C. Giraffe", "D. Gorilla"], answer: "B" },
      { question: "What is the chemical symbol for gold?", options: ["A. Go", "B. Au", "C. Ag", "D. Gd"], answer: "B" },
      { question: "Which country won the FIFA World Cup in 2018?", options: ["A. Germany", "B. Brazil", "C. France", "D. Argentina"], answer: "C" },
      { question: "What is the square root of 144?", options: ["A. 10", "B. 12", "C. 14", "D. 16"], answer: "B" },
      { question: "Who painted the Mona Lisa?", options: ["A. Vincent van Gogh", "B. Leonardo da Vinci", "C. Pablo Picasso", "D. Michelangelo"], answer: "B" },
      { question: "What is the capital of Japan?", options: ["A. Tokyo", "B. Beijing", "C. Seoul", "D. Bangkok"], answer: "A" },
      { question: "Which gas do plants absorb during photosynthesis?", options: ["A. Oxygen", "B. Carbon dioxide", "C. Nitrogen", "D. Hydrogen"], answer: "B" },
      { question: "What is the smallest prime number?", options: ["A. 1", "B. 2", "C. 3", "D. 5"], answer: "B" },
      { question: "Which planet is known as the 'Morning Star'?", options: ["A. Venus", "B. Mercury", "C. Mars", "D. Jupiter"], answer: "A" },
      { question: "What is the chemical symbol for silver?", options: ["A. Si", "B. S", "C. Ag", "D. Au"], answer: "C" },
      { question: "Who was the first man to walk on the moon?", options: ["A. Neil Armstrong", "B. Buzz Aldrin", "C. Yuri Gagarin", "D. Alan Shepard"], answer: "A" }
    ]
    @lifelines = {
      "50/50" => method(:fifty_fifty),
      "Phone-a-Friend" => method(:phone_a_friend),
      "Ask the Audience" => method(:ask_the_audience)
    }
    @used_lifelines = []
    @current_question_index = 0
    @money = [100, 200, 300, 500, 1000, 2000, 4000, 8000, 16000, 32000, 64000, 125000, 250000, 500000, 1000000]
    @current_money = @money.first
  end

  def start_game
    puts "Welcome to Who Wants to Be a Millionaire!"
    while @current_question_index < @questions.length
      puts "\nQuestion #{@current_question_index + 1}: #{@questions[@current_question_index][:question]}"
      display_options
      answer = gets.chomp.upcase
      if answer == @questions[@current_question_index][:answer]
        puts "Correct! You've won $#{@current_money}!"
        @current_question_index += 1
        @current_money = @money[@current_question_index]
      else
        puts "Sorry, that's incorrect. Game over!"
        break
      end
    end
    puts "Congratulations! You've won $1,000,000!" if @current_question_index == @questions.length
  end

  private

  def display_options
    @questions[@current_question_index][:options].each { |option| puts option }
    puts "Lifelines: " + @lifelines.keys.join(", ")
    puts "Choose an option or use a lifeline:"
  end

  def fifty_fifty
    options = @questions[@current_question_index][:options].select { |option| option.include?(@questions[@current_question_index][:answer]) }
    2.times { options << @questions[@current_question_index][:options].reject { |option| options.include?(option) }.sample }
    puts "The remaining options are: #{options.join(', ')}"
    @used_lifelines << "50/50"
  end

  def phone_a_friend
    friend_opinion = ["I'm pretty sure it's ", "I think it's ", "I'm not sure, but I believe it's "].sample
    puts "Your friend says: '#{friend_opinion}#{@questions[@current_question_index][:answer]}'"
    @used_lifelines << "Phone-a-Friend"
  end

  def ask_the_audience
    audience_votes = {
      @questions[@current_question_index][:options][0] => rand(1..40),
      @questions[@current_question_index][:options][1] => rand(1..40),
      @questions[@current_question_index][:options][2] => rand(1..40),
      @questions[@current_question_index][:options][3] => 100 - rand(1..40)
    }
    puts "Audience votes: "
    audience_votes.each { |option, votes| puts "#{option}: #{votes}%" }
    @used_lifelines << "Ask the Audience"
  end
end

game = MillionaireGame.new
game.start_game
