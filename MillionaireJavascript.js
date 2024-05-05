  const questions = [
      {
          question: "What is the capital of France?",
          answers: ["A. London", "B. Paris", "C. Berlin", "D. Rome"],
          correctAnswer: "B"
      },
      {
          question: "Which planet is known as the Red Planet?",
          answers: ["A. Venus", "B. Mars", "C. Jupiter", "D. Saturn"],
          correctAnswer: "B"
      },
      {
          question: "Which is the largest ocean on Earth?",
          answers: ["A. Atlantic Ocean", "B. Indian Ocean", "C. Arctic Ocean", "D. Pacific Ocean"],
          correctAnswer: "D"
      },
      {
          question: "What is the tallest mountain in the world?",
          answers: ["A. Mount Everest", "B. Mount Kilimanjaro", "C. K2", "D. Mount Fuji"],
          correctAnswer: "A"
      },
      {
          question: "What is the chemical symbol for water?",
          answers: ["A. Wo", "B. Wa", "C. H2O", "D. W"],
          correctAnswer: "C"
      },
      {
          question: "Who wrote 'Romeo and Juliet'?",
          answers: ["A. William Shakespeare", "B. Charles Dickens", "C. Mark Twain", "D. Jane Austen"],
          correctAnswer: "A"
      },
      {
          question: "Which country is known as the Land of the Rising Sun?",
          answers: ["A. China", "B. Japan", "C. South Korea", "D. Vietnam"],
          correctAnswer: "B"
      },
      {
          question: "What is the largest organ in the human body?",
          answers: ["A. Heart", "B. Brain", "C. Liver", "D. Skin"],
          correctAnswer: "D"
      },
      {
          question: "Who painted the Mona Lisa?",
          answers: ["A. Vincent van Gogh", "B. Leonardo da Vinci", "C. Pablo Picasso", "D. Michelangelo"],
          correctAnswer: "B"
      },
      {
          question: "What is the main ingredient in guacamole?",
          answers: ["A. Tomatoes", "B. Avocado", "C. Onions", "D. Cilantro"],
          correctAnswer: "B"
      },
      {
          question: "What is the currency of Japan?",
          answers: ["A. Yuan", "B. Yen", "C. Euro", "D. Dollar"],
          correctAnswer: "B"
      },
      {
          question: "Which gas do plants use to photosynthesize?",
          answers: ["A. Oxygen", "B. Nitrogen", "C. Carbon Dioxide", "D. Hydrogen"],
          correctAnswer: "C"
      },
      {
          question: "What is the chemical symbol for gold?",
          answers: ["A. Au", "B. Ag", "C. Pt", "D. Hg"],
          correctAnswer: "A"
      },
      {
          question: "Who was the first man to step on the moon?",
          answers: ["A. Buzz Aldrin", "B. Neil Armstrong", "C. Michael Collins", "D. Alan Shepard"],
          correctAnswer: "B"
      },
      {
          question: "What is the largest animal in the world?",
          answers: ["A. African Elephant", "B. Blue Whale", "C. Giraffe", "D. Saltwater Crocodile"],
          correctAnswer: "B"
      }
  ];

  // Function to ask a question
  function askQuestion(question, answers, correctAnswer) {
      console.log(question);
      answers.forEach(answer => {
          console.log(answer);
      });

      const response = prompt("Your answer (A, B, C, or D)");
      if (response.toUpperCase() === correctAnswer) {
          console.log("Correct!");
          return true;
      } else {
          console.log(`Incorrect! The correct answer is ${correctAnswer}.`);
          return false;
      }
  }

  // Main game loop
  let score = 0;
  for (let i = 0; i < questions.length; i++) {
      const questionObj = questions[i];
      if (askQuestion(questionObj.question, questionObj.answers, questionObj.correctAnswer)) {
          score++;
          console.log(`Your score: ${score}`);
      } else {
          console.log(`Game over! Your final score: ${score}`);
          break;
      }
  }

  // Check if the user won the game
  if (score === questions.length) {
      console.log("Congratulations! You are a millionaire!");
  } else {
      console.log("Better luck next time!");
  }