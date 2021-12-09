// Copyright (c) 2021 Mel Aguoth All rights reserved.
//
// Created By: Mel Aguoth
// Date: December 9, 2021
// Plays "Rock, Paper, Scissors" with the user.

func rockPaperScissors(gameChoice: String) {

  // Create a new array, and add rock, paper, and scissors to it.
  let rpsGameChoice: [String] = ["rock", "paper", "scissors"]

  // Get the program's choice from the list.
  let programGameChoice: String = rpsGameChoice.randomElement() ?? ""

  // Display to the user what the program chose.
  print("The program chose: \(programGameChoice)")
  print("")

  // Compare the user's choice to the program's choice and display the outcome.
  if gameChoice == programGameChoice {
    print("It's a tie! Restart to try again.")
  } else if gameChoice == "rock" && programGameChoice == "scissors" {
    print("You win!")
  } else if gameChoice == "rock" && programGameChoice == "paper" {
    print("You lost. Restart to try again.")
  } else if gameChoice == "paper" && programGameChoice == "rock" {
    print("You win!")
  } else if gameChoice == "paper" && programGameChoice == "scissors" {
    print("You lost. Restart to try again.")
  } else if gameChoice == "scissors" && programGameChoice == "paper" {
    print("You win!")
  } else if gameChoice == "scissors" && programGameChoice == "rock" {
    print("You lost. Restart to try again.")

  // If the user's input isn't valid, display as such to the user.
  } else {
    print("That isn't a valid choice. Please try again.")
  }
}

// Introduce the program.
print("This program will play 'Rock, Paper, Scissors' with you.")
print("Enter rock, paper, or scissors:", terminator: " ")
let userGameChoice: String = readLine() ?? ""

// Call rockPaperScissors.
rockPaperScissors(gameChoice: userGameChoice)
