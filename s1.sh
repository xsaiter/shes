#!/bin/bash

while getopts e:t:f: option 
do 
 case "${option}" 
 in  
 e) IN_EXT_FILE=${OPTARG};;
 t) TEXT=${OPTARG};;
 f) OUT_FILE=${OPTARG};;
 esac 
done 

grep -r --include=\*.$IN_EXT_FILE -L "$TEXT" > $OUT_FILE
