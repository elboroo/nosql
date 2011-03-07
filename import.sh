#!/bin/bash

FILES=./tweets/*
filepath=$1
PLIK=$1

		  jsonfilename=$(echo $filepath | sed -e 's/.\/tweets\///g')
		  echo Filename: $jsonfilename

I=0

dokument=""

while read linia; do
#		  I=$(($I+1))
#		  docname=$(echo $jsonfilename | sed -e 's/.json//g')
		  #echo Docname: $docname
#		  url="http://127.0.0.1:14018/tweets/${docname}$I/ \ "

		  #echo URL: $url

		 
#		  echo curl -X PUT "$url"  -H '"Content-Type: application/json"' -d \'$dokument XXXXXXXXXXXXXXXXXXXX
		  tablica[$I]=$(echo "'")
		  tablica[$I]=$(echo ${tablica[$I]} $linia)
#		  tablica[$I]=$(echo ${tablica[$I]} "'")
		  I=$(($I+1))
#		  echo ${tablica[$i]}
#		  echo \'$REPLY XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#		  DOKUMENT=$REPLY
#		  echo \' >> tmp
#		  echo $linia >> tmp
#		  echo \' >> tmp

#		  while read zPliku; do
#				dokument="$dokument $zPliku"
#		  done < tmp

#		  echo $dokument
#		  echo " "
#		  echo " "

#		  echo " " > tmp


		#       curl -X PUT "$url"  -H '"Content-Type: application/json"' -d  $dokument


done < "$PLIK"

I=0
#for (( i=0; $i < 1; i++)); do
for (( i=0; $i < ${#tablica[@]}; i++)); do
	echo i= $i
#	echo ${tablica[$i]}
#	echo "'"
	zm1=$(echo ${tablica[$i]})
	zm2=$(echo "'")

#	echo $zm1
#	echo $zm2

	dokument=$(echo $zm1 $zm2)

	echo $dokument

	docname=$(echo $jsonfilename | sed -e 's/.json//g')
	url="http://127.0.0.1:14018/tweets/${docname}$i/ \ "

#	curl -X PUT "$url" -H '"Content-Type: application/json"' -d \' ${tablica[$i]} \'
	

done



