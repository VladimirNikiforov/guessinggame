#!/usr/bin/env bash
# File: guessinggame.sh

function getthecount {
  cnt=$(find . -maxdepth 1 -type f|wc -l)
  echo $cnt
}

count=$(getthecount)
echo "Hello! Nice to meet you at my game! =)"
echo "Guess the number of files in my current directory, please"
read num

while [[ $count -ne $num ]]
do
  if [[ $count -gt $num ]]
  then
    echo "It's too small! Try another number, please"
    read num
  elif [[ $count -lt $num ]]
  then
    echo "It's too much! Try another number, please"
    read num
  fi
done

echo "Congrats! You are WINNER!"
echo "Have a nice day!"
