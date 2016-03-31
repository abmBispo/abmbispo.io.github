#!/bin/sh

#Esse script pega o todo o css em source/css/ e minifica e concatena tudo em um arquivo
curl -X POST -s --data-urlencode 'input@source/css/bootstrap.css' https://cssminifier.com/raw > style.min.css
curl -X POST -s --data-urlencode 'input@source/css/bootstrap-theme.css' https://cssminifier.com/raw >> style.min.css
curl -X POST -s --data-urlencode 'input@source/css/style.css' https://cssminifier.com/raw >> style.min.css
