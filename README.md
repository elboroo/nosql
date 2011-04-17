Na gita wrzucilem tylko przykladowa czesc danych json. 

Zrodlo danych : http://www.infochimps.com/ 

Do importu danych do couchdb służy skrypt w rubym: import.rb ( skryp w bash'u nie dziala )

Widoki znajdują się w pliku ukdata.js. Dodajemy je poleceniem:

> couchapp push ukdata.js http://sigma.inf.ug.edu.pl:14018/ukdata


