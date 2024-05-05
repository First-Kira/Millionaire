Here's a step-by-step breakdown of the provided code:

1. **Class Definition**:
    - Defines a class `MillionaireGame`.

2. **Initialize Method**:
    - Initializes instance variables:
        - `@questions`: An array of hashes, each hash containing a question, options, and answer.
        - `@lifelines`: A hash containing lifelines as keys and corresponding methods as values.
        - `@used_lifelines`: An array to keep track of used lifelines.
        - `@current_question_index`: Index to track the current question.
        - `@money`: An array representing the amount of money won at each question.
        - `@current_money`: The current amount of money won.
    
3. **Start Game Method**:
    - Prints a welcome message.
    - Enters a loop to iterate through each question until the last question or until the player gets a wrong answer.
    - Displays the current question and options.
    - Reads the player's answer from input.
    - Checks if the answer is correct:
        - If correct, increments `@current_question_index` and updates `@current_money`.
        - If incorrect, ends the game loop.
    - Prints a congratulatory message if all questions are answered correctly.

4. **Private Methods**:
    - **display_options**: Displays the options for the current question and available lifelines.
    - **fifty_fifty**: Implements the 50/50 lifeline, removing two incorrect options.
    - **phone_a_friend**: Implements the Phone-a-Friend lifeline, simulating a friend's opinion.
    - **ask_the_audience**: Implements the Ask the Audience lifeline, simulating audience votes.

5. **Instance Creation and Game Start**:
    - Creates an instance of `MillionaireGame` named `game`.
    - Calls the `start_game` method on the `game` instance to begin the game.

The game proceeds by asking questions, allowing the player to answer or use lifelines, and then determining whether the answer is correct or not. The game continues until the player answers incorrectly or answers all questions correctly.
