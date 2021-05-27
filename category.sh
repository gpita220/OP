#!/bin/bash
echo "Joke:"
echo "<---->"
echo "Choose a category:"
echo "(dark, Programming, Misc, Pun, Spooky, Christmas)"
read cate

curl "https://v2.jokeapi.dev/joke/$cate" > kategoria.txt
echo $(grep "setup" kategoria.txt)
echo $(grep "delivery" kategoria.txt)
echo $(grep "type" kategoria.txt)
echo $(grep "category" kategoria.txt)
echo $(grep "joke" kategoria.txt)
echo "<---->"
rm kategoria.txt

