def get_user_choice
    puts "Enter your choice: Rock, Paper, or Scissors"
    user_choice = gets.chomp.downcase
    until ["rock", "paper", "scissors"].include?(user_choice)
      puts "Invalid choice. Please enter Rock, Paper, or Scissors"
      user_choice = gets.chomp.downcase
    end
    user_choice
  end
  
  def get_computer_choice
    ["rock", "paper", "scissors"].sample
  end
  
  def determine_winner(user_choice, computer_choice)
    if user_choice == computer_choice
      "It's a tie!"
    elsif (user_choice == "rock" && computer_choice == "scissors") ||
          (user_choice == "paper" && computer_choice == "rock") ||
          (user_choice == "scissors" && computer_choice == "paper")
      "You win!"
    else
      "Computer wins!"
    end
  end
  
  def play_game
    user_choice = get_user_choice
    computer_choice = get_computer_choice
  
    puts "You chose #{user_choice.capitalize}."
    puts "Computer chose #{computer_choice.capitalize}."
  
    result = determine_winner(user_choice, computer_choice)
    puts result
  end
  
  play_game
  