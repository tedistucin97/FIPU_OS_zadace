#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Potrebno je proslijediti točno 2 argumenta."
    exit 1
fi

PUTANJA=$1
NASTAVAK=$2
BROJAC=0

for datoteka in "${PUTANJA}"/*"${NASTAVAK}"; do
    if [ -e "$datoteka" ] && [ -f "$datoteka" ]; then
        ((BROJAC++))
        echo "$BROJAC. datoteka je: $(basename "$datoteka")"
    fi
done

if [ "$BROJAC" -eq 0 ]; then
    echo "Nema takvih datoteka s nastavkom \"$NASTAVAK\" u direktoriju \"$PUTANJA\"."
fi

