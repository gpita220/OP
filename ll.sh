#!/bin/bash
curl "https://v2.jokeapi.dev/joke/Any" > adat.txt
if [[ $# <1 ]]
then
 echo "Hiba!! Adj meg legalább 1 paramétert!(-h =segítség)"
fi
while getopts "hjtcarpfk" opt;do
case ${opt} in
h )
echo "Help:"
echo "<------>"
echo "./ll.sh -h  Help"
echo "./ll.sh -j  Joke"
echo "./ll.sh -t  Joke+Type"
echo "./ll.sh -c  Joke+Category"
echo "./ll.sh -a  Joke+all"
echo "./ll.sh -r  Choose a category"
echo "./ll.sh -p  Choose a type"
echo "./ll.sh -f  Choose a flag"
echo "./ll.sh -k  Choose a type, a category and a flag"
;;
j )
echo "Joke:"
echo "<---->"
echo $(grep "setup" adat.txt)
echo $(grep "delivery" adat.txt)
echo $(grep "joke" adat.txt)
echo "<---->"
;;
t )
echo "Joke:"
echo "<---->"
echo $(grep "setup" adat.txt)
echo $(grep "delivery" adat.txt)
echo $(grep "type" adat.txt)
echo $(grep "joke" adat.txt)
echo "<---->"
;;
c )
echo "Joke:"
echo "<---->"
echo $(grep "setup" adat.txt)
echo $(grep "delivery" adat.txt)
echo $(grep "category" adat.txt)
echo $(grep "joke" adat.txt)
echo "<---->"
;;
a )
echo "Joke:"
echo "<---->"
echo $(grep "setup" adat.txt)
echo $(grep "delivery" adat.txt)
echo $(grep "type" adat.txt)
echo $(grep "category" adat.txt)
echo $(grep "joke" adat.txt)
echo "<---->"
;;
r )
bash "category.sh";;
p )
bash "type.sh";;
f )
bash "flag.sh";;
k )
bash "k.sh";;
esac

done
rm adat.txt
