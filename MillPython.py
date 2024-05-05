# Define data structure for questions and answers
class Question:
    def __init__(self, question, answers, correct_answer):
        self.question = question
        self.answers = answers
        self.correct_answer = correct_answer

# List of questions
questions = [
    Question("What is the capital of France?", ["A. London", "B. Paris", "C. Berlin", "D. Rome"], "B"),
    Question("Which planet is known as the Red Planet?", ["A. Venus", "B. Mars", "C. Jupiter", "D. Saturn"], "B"),
    Question("Which is the largest ocean on Earth?", ["A. Atlantic Ocean", "B. Indian Ocean", "C. Arctic Ocean", "D. Pacific Ocean"], "D"),
    Question("What is the tallest mountain in the world?", ["A. Mount Everest", "B. Mount Kilimanjaro", "C. K2", "D. Mount Fuji"], "A"),
    Question("What is the chemical symbol for water?", ["A. Wo", "B. Wa", "C. H2O", "D. W"], "C"),
    Question("Who wrote 'Romeo and Juliet'?", ["A. William Shakespeare", "B. Charles Dickens", "C. Mark Twain", "D. Jane Austen"], "A"),
    Question("Which country is known as the Land of the Rising Sun?", ["A. China", "B. Japan", "C. South Korea", "D. Vietnam"], "B"),
    Question("What is the largest organ in the human body?", ["A. Heart", "B. Brain", "C. Liver", "D. Skin"], "D"),
    Question("Who painted the Mona Lisa?", ["A. Vincent van Gogh", "B. Leonardo da Vinci", "C. Pablo Picasso", "D. Michelangelo"], "B"),
    Question("What is the main ingredient in guacamole?", ["A. Tomatoes", "B. Avocado", "C. Onions", "D. Cilantro"], "B"),
    Question("What is the currency of Japan?", ["A. Yuan", "B. Yen", "C. Euro", "D. Dollar"], "B"),
    Question("Which gas do plants use to photosynthesize?", ["A. Oxygen", "B. Nitrogen", "C. Carbon Dioxide", "D. Hydrogen"], "C"),
    Question("What is the chemical symbol for gold?", ["A. Au", "B. Ag", "C. Pt", "D. Hg"], "A"),
    Question("Who was the first man to step on the moon?", ["A. Buzz Aldrin", "B. Neil Armstrong", "C. Michael Collins", "D. Alan Shepard"], "B"),
    Question("What is the largest animal in the world?", ["A. African Elephant", "B. Blue Whale", "C. Giraffe", "D. Saltwater Crocodile"], "B")
]

# Function to ask a question
def ask_question(question):
    print(question.question)
    for answer in question.answers:
        print(answer)
    response = input("Your answer (A, B, C, or D): ")
    if response.upper() == question.correct_answer:
        print("Correct!")
        return True
    else:
        print(f"Incorrect! The correct answer is {question.correct_answer}.")
        return False

# Main game loop
def play_game(questions):
    score = 0
    for question in questions:
        if ask_question(question):
            score += 1
            print(f"Your score: {score}")
        else:
            print(f"Game over! Your final score: {score}")
            break

    # Check if the user won the game
    if score == len(questions):
        print("Congratulations! You are a millionaire!")
    else:
        print("Better luck next time!")

if __name__ == "__main__":
    print("Welcome to the Millionaire Quiz Game!")
    play_game(questions)
