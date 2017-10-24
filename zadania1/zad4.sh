#!/bin/bash

echo 'Podaj rodzaj dzialania'
echo 'd - dodawanie, o - odejmowanie, * - mnozenie, dz - dzielenie'
read op
echo 'podaj liczby'
read l1
read l2
case $op in
 "d" ) echo $[$l1 + $l2] ;;
 "o" ) echo $[$l1 - $l2] ;;
 "*" ) echo $[$l1 * $l2] ;;
 "dz" ) echo $[$l1 / $l2] ;;
esac

