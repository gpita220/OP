#!/bin/bash
echo "Joke:"
echo "<---->"
echo "Choose a Flag:"
echo "(nsfw, religious, political, racist, sexist, explicit)"
read flag
curl "https://v2.jokeapi.dev/joke/Any?blacklistFlags=$flag" > flag.txt
echo $(grep "setup" flag.txt)
echo $(grep "delivery" flag.txt)
echo $(grep "type" flag.txt)
echo $(grep "category" flag.txt)
echo $(grep "joke" flag.txt)
echo "Flag:$flag"
echo "<---->"
rm flag.txt
