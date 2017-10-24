#!/bin/bash
haslo='abcd'
echo 'Podaj haslo'
read passwd
if [ $passwd != $haslo ]; then
	read passwd
	if [ $passwd != $haslo ]; then
		exit 0
	else
	ls -a
	fi
else
ls ..
fi
