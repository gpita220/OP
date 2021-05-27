#!/bin/bash
echo "Joke:"
echo "<---->"
echo "Choose a type:"
echo "(single,twopart)"
read tip
curl "https://v2.jokeapi.dev/joke/Any?type=$tip" > tipus.txt
echo $(grep "setup" tipus.txt)
echo $(grep "delivery" tipus.txt)
echo $(grep "type" tipus.txt)
echo $(grep "category" tipus.txt)
echo $(grep "joke" tipus.txt)
echo "<---->"
rm tipus.txt

