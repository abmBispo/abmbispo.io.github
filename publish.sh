#!/bin/sh

# Esse script pega o todo o css em source/css/ e minifica e concatena tudo em um arquivo
curl -X POST -s --data-urlencode 'input@source/css/bootstrap.css' https://cssminifier.com/raw > css/stylesheet.min.css
curl -X POST -s --data-urlencode 'input@source/css/bootstrap-theme.css' https://cssminifier.com/raw >> css/stylesheet.min.css
curl -X POST -s --data-urlencode 'input@source/css/style.css' https://cssminifier.com/raw >> css/stylesheet.min.css
# Placeholder até achar um serviço para minificar o html também
cp source/index.html index.html
cp source/formacao.html formacao.html
cp source/projetos.html projetos.html
