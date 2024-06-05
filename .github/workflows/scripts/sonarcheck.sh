#!/bin/bash

before=$1
after=$2

if [ "$(echo $2 '<' $1 | bc -l)" -eq 1 ];
then
        echo "You coverage before was $1 and now it is less than before which is $2"
        exit 1
else
        echo "Sonar Check is fine i.e equal or more than before !!"
fi
