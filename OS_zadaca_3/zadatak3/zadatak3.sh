#!/bin/bash

brojac=0
cd "./screenshots"

for datoteka in *; do
	if [ -f "$datoteka" ]; then
		naziv="$(basename "$datoteka")"
		((brojac++))
		mv "$naziv" screenshot_"$brojac"_"$naziv"
		echo "screenshot_$brojac_$naziv"
	fi
done

