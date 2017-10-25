#!/bin/bash

filename=$1
test -e $filename && echo "plik istnieje" || echo "plik nie istnieje"
