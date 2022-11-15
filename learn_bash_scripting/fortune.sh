#!/bin/bash
# To give file executable permissions run "chmod <permissions> <filename>": "chmod +x fortune.sh"

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

GET_FORTUNE() {
  echo Ask a yes or no question:
  read QUESTION

  if [[ ! $1 ]]
  then
    echo -e "\n${RESPONSES[$N]}"
  else
    echo Try again. Make sure it ends with a question mark:
  fi
}

GET_FORTUNE

until [[ $QUESTION =~ \?$ ]] # check the pattern: does the question ends with "?"
do
  GET_FORTUNE again
done


