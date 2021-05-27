#!/bin/bash
echo "Joke:"
echo "<---->"
echo "Choose a type:"
echo "(single,twopart)"
read type

echo "(dark, Programming, Misc, Pun, Spooky, Christmas)"
read cate

echo "Choose a Flag:"
echo "(nsfw, religious, political, racist, sexist, explicit)"
read flag

echo "Choose a category:"
curl "https://v2.jokeapi.dev/joke/$cate?blacklistFlags=$flag&type=$type" > k.txt
echo $(grep "setup" k.txt)
echo $(grep "delivery" k.txt)
echo $(grep "type" k.txt)
echo $(grep "category" k.txt)
echo $(grep "joke" k.txt)
echo "Flag: $flag"
echo "<---->"
rm k.txt


