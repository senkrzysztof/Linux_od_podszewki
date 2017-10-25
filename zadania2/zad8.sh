#!/bin/bash

tablica=("napis1" "napis2" "napis3" "napis4" "napis5")

echo ${tablica[0]}
echo ${tablica[*]}
echo ${!tablica[@]}
#unset tablica[2]
#tablica[6]="napis7"
