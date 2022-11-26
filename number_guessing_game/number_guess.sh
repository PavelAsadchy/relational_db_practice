#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USER_NAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USER_NAME'")

# if user doen't exist
if [[ -z $USER_ID ]]
then
  echo -e "Welcome, $USER_NAME! It looks like this is your first time here."
  #insert new user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(user_name) VALUES('$USER_NAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USER_NAME'")
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id) VALUES($USER_ID)")
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT best_game FROM games WHERE user_id=$USER_ID")
  echo -e "Welcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RAN_NUM=$[ $RANDOM % 1000 + 0 ]
I=0

echo Guess the secret number between 1 and 1000:
while read GUESS_NUMBER
do
  if [[ $GUESS_NUMBER =~ ^[0-9]+$ ]]
  then
    (( I++ ))
    if [ $GUESS_NUMBER -eq $RAN_NUM ]
    then
      echo "You guessed it in $I tries. The secret number was $RAN_NUM. Nice job!"
      GAMES_PLAYED=$($PSQL "SELECT games_played FROM games WHERE user_id=$USER_ID")
      BEST_GAME=$($PSQL "SELECT best_game FROM games WHERE user_id=$USER_ID")

      if [ $BEST_GAME -lt $I ]
      then
        BEST_GAME=$I
      fi

      (( GAMES_PLAYED++ ))
      UPDATE_GAME_RESULT=$($PSQL "UPDATE games SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE user_id=$USER_ID")
      break
    else
      # if higher than the secret number
      if [ $GUESS_NUMBER -gt $RAN_NUM ]
      then
        echo "It's higher than that, guess again:"
      else
      # if lower than the secret number
        echo "It's lower than that, guess again:"
      fi
    fi
  else
    echo That is not an integer, guess again:
  fi
done
