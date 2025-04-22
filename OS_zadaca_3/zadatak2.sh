#!/bin/bash

broj=$1

if [ $# -eq 1 ] && [ "$broj" -ge 1 ] && [ "$broj" -le 10 ]; then
    echo -n "niz_brojeva=" > brojevi.txt
    for (( i=1; i<=broj; i++ )); do
        echo -n "$i " >> brojevi.txt
    done
    echo "Datoteka brojevi.txt je kreirana i sadrži niz."
else
    echo "Uneseni argument mora biti točno jedan broj između 1 i 10."
    exit 1
fi
