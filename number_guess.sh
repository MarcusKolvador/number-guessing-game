#!/bin/bash

#debug config
debug_mode=false
#debug config

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo 'Enter your username:'
read username

user_id=$($PSQL "SELECT user_id FROM users WHERE username='$username'")
#echo $user_id

if [ -z "$user_id" ]; then
  echo "Welcome, $username! It looks like this is your first time here."
  add_user=$($PSQL "INSERT INTO users(username) VALUES('$username')")
  user_id=$($PSQL "SELECT user_id FROM users WHERE username='$username'")
else
  games_played=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$user_id")
  best_game=$($PSQL "SELECT guesses_amount FROM games WHERE user_id=$user_id ORDER BY guesses_amount LIMIT 1")
  echo Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses.
fi

echo "Guess the secret number between 1 and 1000:"
answer=$(( RANDOM % 1000 + 1))

#debug mode
if [ $debug_mode == true ]; then
  echo $answer
else
  :
fi

number_of_guesses=0

while true; do
  read user_answer

  if [[ ! "$user_answer" =~ ^-?[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
      continue
  fi

  number_of_guesses=$((number_of_guesses + 1))

  if [  "$user_answer" -eq "$answer" ]; then
    break
  elif [ "$user_answer" -gt "$answer" ]; then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done


echo "You guessed it in $number_of_guesses tries. The secret number was $answer. Nice job!"

upload_game=$($PSQL "INSERT INTO games(user_id, guesses_amount) VALUES('$user_id', $number_of_guesses)")