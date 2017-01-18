#!/bin/sh
# By Alan Borges
echo "Construindo página..."

command -v npm >/dev/null 2>&1 || { echo "Requer npm porém não foi encontrada nenhuma instalação em seu PATH" >&2; exit 1; }
echo "...Encontrada instalação do npm"

npm list --global html-minifier > /dev/null 2>&1 || { echo "Requer html-minifier. Execute \"npm install html-minifier -g\"" >&2; exit 1; }
echo "...Encontrada instalação do html-minifier"


echo "\n~ATENÇÃO, usando estas configs:"
cat minifier.json
echo

cd ..
echo "Minificando:"
html-minifier --output-dir . --input-dir source -c scripts/minifier.json
echo "Pronto :)"
