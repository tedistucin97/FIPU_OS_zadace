#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Potrebno je proslijediti točno jedan argument."
    exit 1
fi

skripta_dir="$(cd "$(dirname "$0")" && pwd)"

ime_direktorija="$1"
ciljani_direktorij="$skripta_dir/$ime_direktorija"

if [ ! -d "$ciljani_direktorij" ]; then
    echo "Direktorij '$ime_direktorija' ne postoji u istom direktoriju kao skripta."
    exit 1
fi

cd "$skripta_dir" || exit 1
zip -r svi_zapisi.zip "$ime_direktorija"

echo "Kompresija uspješna."
