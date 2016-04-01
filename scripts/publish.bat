@echo off

cd ..

html-minifier --output-dir . -c scripts/minifier.json --input-dir source

cd css
type stylesheet.css > stylesheet.min.css
type bootstrap-theme.css >> stylesheet.min.css
del stylesheet.css bootstrap-theme.css
echo "Pronto :)"
