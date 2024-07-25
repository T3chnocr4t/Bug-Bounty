#!/bin/bash

echo "creating directory $1 recon"
sleep 2
TODAY=$(date)
echo "This scan was created on $TODAY"
sleep 2
echo "st4rtin9 t0 f0r l00kin9 f0r 5ubd0m4in...."
sleep 2
DOMAIN=$1
DIRECTORY=${DOMAIN}_recon

mkdir $DIRECTORY

subfinder -d $DOMAIN -o ./$DIRECTORY/subdomain.txt 

sublist3r -d $DOMAIN -o ./$DIRECTORY/subs.txt 

cat ./$DIRECTORY/subs.txt >> ./$DIRECTORY/subdomain.txt

rm ./$DIRECTORY/subs.txt 

echo "results: gotten $TODAY at $DIRECTORY/subdomain.txt subdomain"
sleep 2
echo "happy hacking"
                       
