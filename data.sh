#!/bin/sh

  #==================================================
  #somministrazioni-vaccini-summary-latest-latest.pdf
  #==================================================

if [ -f somministrazioni-vaccini-summary-latest.pdf ]; then
  rm somministrazioni-vaccini-summary-latest.pdf
fi

if [ -f somministrazioni-vaccini-summary-latest.vsc ]; then
  rm somministrazioni-vaccini-summary-latest.csv
fi

wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/somministrazioni-vaccini-summary-latest.csv

pandoc -V geometry:"paperwidth=470mm, paperheight=210mm, top=2cm, bottom=1.5cm, left=2cm, right=2cm" -o somministrazioni-vaccini-summary-latest.pdf somministrazioni-vaccini-summary-latest.csv

xdg-open somministrazioni-vaccini-summary-latest.pdf


rm somministrazioni-vaccini-summary-latest.csv
rm somministrazioni-vaccini-summary-latest.pdf

  #===================================
  #somministrazioni-vaccini-latest.pdf
  #===================================

if [ -f somministrazioni-vaccini-latest.pdf ]; then
  rm somministrazioni-vaccini-latest.pdf
fi

if [ -f somministrazioni-vaccini-latest.vsc ]; then
  rm somministrazioni-vaccini-latest.csv
fi

wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/somministrazioni-vaccini-latest.csv

pandoc -V geometry:"paperwidth=500mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o somministrazioni-vaccini-latest.pdf somministrazioni-vaccini-latest.csv +RTS -Ksize -RTS

xdg-open somministrazioni-vaccini-latest.pdf


rm somministrazioni-vaccini-latest.csv
rm somministrazioni-vaccini-latest.pdf

  #===================================
  #platea-dose-addizionale-booster.csv
  #===================================

if [ -f platea-dose-addizionale-booster.csv ]; then
  rm platea-dose-addizionale-booster.csv
fi

if [ -f platea-dose-addizionale-booster.pdf ]; then
  rm platea-dose-addizionale-booster.pdf
fi

wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/platea-dose-addizionale-booster.csv

pandoc -V geometry:"paperwidth=200mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o platea-dose-addizionale-booster.pdf platea-dose-addizionale-booster.csv

xdg-open platea-dose-addizionale-booster.pdf


rm platea-dose-addizionale-booster.pdf
rm platea-dose-addizionale-booster.csv
