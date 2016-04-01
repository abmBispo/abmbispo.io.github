#!/bin/sh
# By Ariel Santos
echo "Construindo página..."

command -v npm >/dev/null 2>&1 || { echo "Requer npm porém não foi encontrada nenhuma instalação em seu PATH" >&2; exit 1; }
echo "...Encontrada instalação do npm"

npm list --global html-minifier > /dev/null 2>&1 || { echo "Requer html-minifier. Execute \"npm install html-minifier -g\"" >&2; exit 1; }
echo "...Encontrada instalação do html-minifier"


echo "\n~ATENÇÃO, usando estas configs:"
cat minifier.json
echo

cd ..
echo "...Linting:"
html-minifier --output-dir . -c scripts/minifier.json --input-dir source
echo
echo "...Arquivos foram minificados"
cd css
cat stylesheet.css > stylesheet.min.css
cat bootstrap-theme.css >> stylesheet.min.css
rm stylesheet.css bootstrap-theme.css
echo "Pronto :)"
