@echo off

npm >nul 2>&1 | echo "Npm/Node não está instalado!"

npm list --global html-minifier >nul 2>&1 | echo "Requer html-minifier. Execute \"npm install html-minifier -g\""

echo "\n~ATENÇÃO, usando estas configs:"
type minifier.json
echo

cd ..
echo "...Linting:"
html-minifier --output-dir . -c scripts/minifier.json --input-dir source
echo
echo "...Arquivos foram minificados"
cd css
type stylesheet.css > stylesheet.min.css
type bootstrap-theme.css >> stylesheet.min.css
del stylesheet.css bootstrap-theme.css
echo "Pronto :)"
