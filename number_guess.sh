#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read USER_NAME

#function to check username
CHECK_USER() {
  #use user_name to get user_id from users table
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USER_NAME'")
  #if users doesn't exist
  if [[ -z $USER_ID ]]
  then
    #insert new user
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(user_name) VALUES('$USER_NAME')")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USER_NAME'")
    echo Welcome, $USER_NAME! It looks like this is your first time here.
    PLAY_GAME
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID")
    echo "Welcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    PLAY_GAME
  fi
}

PLAY_GAME() {

  echo Guess the secret number between 1 and 1000:
  SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
  echo $SECRET_NUMBER
  NUMBER_OF_GUESSES=0

  GUESS_NUMBER

  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
}

GUESS_NUMBER() {
  if [[ $1 ]]
  then
    echo -e "$1"
  fi

  ((NUMBER_OF_GUESSES++))

  read NUMBER
  
  if ! [[ "$NUMBER" =~ ^[0-9]+$ ]]
  then
    GUESS_NUMBER "That is not an integer, guess again:"
  fi

  if [[ $NUMBER = $SECRET_NUMBER ]]
  then
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
  elif (( $NUMBER < $SECRET_NUMBER ))
  then
    GUESS_NUMBER "It's higher than that, guess again:"
  elif (( $NUMBER > $SECRET_NUMBER ))
  then
    GUESS_NUMBER "It's lower than that, guess again:"
  else
    echo Salaah
  fi
}

CHECK_USER