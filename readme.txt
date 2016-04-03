Kurs PHP � Warsztaty IV
Celem warsztat�w jest napisanie prostego sklepu internetowego. Projekt ma by� napisany obiektowo i do ka�dej z klas maj� zosta� napisane testy.
Nast�pnym utrudnieniem jest fakt �e projekt jest grupowy (grupy po 2 osoby).
Aplikacja ma implementowa� nast�puj�ce funkcjonalno�ci:
? Przedmioty: Sklep musi mie� przedmioty. Przedmiot musi mie� swoj� nazw�, opis, cen�.
? Zdj�cia przedmiot�w: Ka�dy przedmiot mo�e posiada� kilka zdj��. Zdj�cie w MySQL powinno trzyma� �cie�k� do zdj�cia na dysku i id przedmiotu do kt�rego si� odnosi.
? U�ytkownicy: Sklep powinien mie� mo�liwo�� za�o�enia konta do robienia zakup�w (bez tego robienie zakup�w nie powinno by� mo�liwe). U�ytkownik powinien mie� nast�puj�ce dane: Imi�, nazwisko, email, has�o, adres. U�ytkownik powinien m�c zobaczy swoj� histori� zakup�w.
? Zam�wienie: Zatwierdzony koszyk zostaje przetworzony w zam�wienie. Posiada ono informacje na temat kto z�o�y� to zam�wienie, statusu zam�wienie (oczekuj�ce, z�o�one, op�acone, zrealizowane), i przedmiot�w i ich ilo�ci w tym zam�wieniu.
Zam�wienie oczekuj�ce to zam�wienie jeszcze nie zatwierdzone przez u�ytkownika (czyli jego koszyk).
? Administratorzy: Strona ma implementowa� konta administrator�w (w osobnej tabelce od u�ytkownik�w). Maj� oni posiada� tylko maila i has�o.
Aplikacja musi mie� nast�puj�ce strony:
? Strona g��wna: Strona g��wna naszego sklepu. Ma posiada� miejsce do zalogowania si�, link do rejestracji, menu z wszystkimi grupami przedmiot�w i karuzele z kilkoma wybranymi przedmiotami.
? Strona rejestracji: Strona do rejestracji u�ytkownika. Ma pobiera� wszystkie informacje o u�ytkowniku
? Panel u�ytkownika: Strona ta ma mie� informacje o u�ytkowniku, dawa� opcje zmiany tych informacji, pokazywa� wszystkie poprzednie zakupy tego u�ytkownika. Powinna by� mo�liwo�� zobaczenia tylko swojej w�asnej strony!
? Stron� zam�wienie: Strona ta ma pokazywa� wszystkie informacje na temat zam�wienia. U�ytkownik powinien m�c widzie� tylko swoje zam�wienia!
? Stron� przedmiotu: Przedmiot powinien wy�wietla� informacj� o sobie, swoje zdj�cia w postaci karuzeli i dawa� mo�liwo�� dodania si� do koszyka obecnie zalogowanego u�ytkownika.
? Stron� koszyka: Strona koszyka powinna pokaza� wszystkie przedmioty kt�re s� w koszyku, da� mo�liwo�� zmieni� ich ilo�� lub ca�kowicie je usun��, pokazywa� ��czn� kwot� zam�wienia, da� mo�liwo�� ca�kowitego usuni�cia wszystkiego z koszyka i mo�liwo�� z�o�enia zam�wienia z aktualnego koszyka.
? Stron� zam�wienia: Strona ta musi przyj�� wszystkie informacje dotycz�ce zam�wienia � adres wysy�ki itp. Musi poda� ca�kowit� kwot� zam�wienia i wy�wietli� informacj� dotycz�ce p�atno�ci.
Aplikacja musi zawiera� te� panel administracyjny. Ma on by� dost�pny po wej�ciu na podstron� /panel i ma zawiera�:
? Strona g��wna: Strona g��wna naszego panelu. Ma mie� linki do: zarz�dzania grupami, zarz�dzania przedmiotami, zarz�dzania u�ytkownikami, zarz�dzania zam�wieniami.
? Zarz�dzanie przedmiotami: Administrator powinien mie� mo�liwo�� oddania lub usuni�cia przedmiot�w
? Zarz�dzanie u�ytkownikami: Administrator powinien mie� mo�liwo�� zobaczenia danych u�ytkownika, wszystkich jego zakup�w i usuni�cia takiego u�ytkownika.
? Zarz�dzanie zam�wieniami: Administrator powinien widzie� wszystkie zam�wienia (pogrupowane po ich aktualnym statusie). Powinien m�c zmieni� status zam�wienia, usun�� dane zam�wienie i wys�a� wiadomo�� do danego klienta na temat tego zam�wienia.
Podstawowy layout stron g��wnych zostanie zaprezentowany na zaj�ciach.
Zadanie 1. Przygotowanie.
Dobierzcie si� w pary. W parze za��cie jedno repozytorium na githubie (musi si� znajdowa� na jednym z kont � oboj�tnie kt�rym). Podepnijcie swoje nowe projekty do repozytorium i zobaczcie czy dzia�a (np. poprzez dodanie pliku readme na githubie i �ci�gni�ciu go na oba komputery).
Zadanie 2. Po��czenie do bazy danych.
Na jednym z komputer�w wsp�lnie stw�rzcie plik z po��czeniem do bazy danych. Dane do po��czenia ka�dy powinien trzyma� w osobnym pliku (np. config.php) kt�ry ma si� nie znajdowa� na repozytorium (u�yjcie do tego .gitignore).
Zadanie 3a. Klasa Przedmiotu.
Stw�rz (w katalogu /src) klas� dla przedmiotu. Przedmiot ma posiada� nazw�, cen�, opis, i dost�pno�� (ilo�� na stanie - int). Przygotuj wszystkie funkcje kt�re mog� by� przydatne dla tej klasy. Przygotuj relacje 1-wiele z tabelk� kt�ra trzyma zdj�cia w bazie danych.
Zadanie 3b. Klasa U�ytkownika.
Stw�rz (w katalogu /src) klas� da u�ytkownika. U�ytkownik ma posiada� wszystkie typowe informacje: Imi�, Nazwisko, mail i has�o. Przygotuj wszystkie potrzebne funkcje przydatne dla tej klasy.
Zadanie 3c. Synchronizacja.
Wy�lijcie swoje commity na repozytorium i pobierzcie kod drugiej osoby. Pami�tajcie o modyfikacji swoich baz danych! Przetestujcie kod drugiej osoby (poprzez ma�y skrypt kt�ry tworzy obiekt danej klasy i na niej dzia�a). Zobaczcie czy wszystko jest ok � je�eli nie to wsp�lnie znajd�cie b��d i dodajcie go do repozytorium.
Zadanie 4a. Klasa Administratora i wiadomo�ci.
Stw�rz klas� dla Administratora. Ma on posiada� nazw�, mail i has�o. Przygotuj wszystkie funkcje kt�re mog� by� przydatne dla tej klasy. Przygotuj klas� wiadomo�ci � powinna mie� ona tekst wiadomo�ci i usera do kt�rego jest skierowana. Wiadomo�ci w naszym systemie maj� s�u�y� do powiadamiania u�ytkownika o r�nych sytuacjach (np. wys�aniu do niego paczki, przyj�ciu zam�wienia etc). Administrator powinien mie� mo�liwo�� wysy�ania wiadomo�ci. Dodaj do klasy User funkcje kt�re zwracaj� wszystkie wys�ane do niego wiadomo�ci.
Zadanie 4b. Klasa Zam�wienia.
Stw�rz klas� da zam�wienia. Ma ona posiada� relacje 1-wiele z u�ytkownikiem i wiele-wiele z przedmiotami. Poza tym ma mie� sw�j stan (niez�o�one, z�o�one, op�acone, zrealizowane). Dodaj do klasy User funkcj� zwracaj�ce jego koszyk i wszystkie zam�wienie (poza koszykiem).
Zadanie 4c. Synchronizacja.
Wy�lijcie swoje commity na repozytorium i pobierzcie kod drugiej osoby. Przetestujcie kod drugiej osoby (poprzez ma�y skrypt kt�ry tworzy obiekt danej klasy i na niej dzia�a). Zobaczcie czy wszystko jest ok � je�eli nie to wsp�lnie znajd�cie b��d i dodajcie go do repozytorium.
Zadanie 5a. Panel administracyjny.
Stw�rz panel administracyjny (w katalogu /admin) wed�ug podanych wcze�niej wytycznych.
Zadanie 5b. Sklep.
Stw�rz sklep (w katalogu /shop) wed�ug podanych wcze�niej wytycznych.
Je�eli uko�czysz swoje funkcjonalno�ci wcze�niej ni� druga osoba, to podzielcie si� jej prac�.
Zadanie 5c. Synchronizacja.
Wy�lijcie swoje commity na repozytorium i pobierzcie kod drugiej osoby. Przetestujcie kod drugiej osoby (poprzez ma�y skrypt kt�ry tworzy obiekt danej klasy i na niej dzia�a). Zobaczcie czy wszystko jest ok � je�eli nie to wsp�lnie znajd�cie b��d i dodajcie go do repozytorium.
Je�eli uko�czysz swoje funkcjonalno�ci wcze�niej ni� druga osoba, to podzielcie si� jej prac�.
Koniec.
Pod koniec pami�tajcie o tym �eby osoba kt�ra nie ma repozytorium zrobi�a form na swoje konto githuba. Dzi�ki temu b�dzie mia�� takie samo repozytorium u siebie. Osoba kt�ra to zrobi musi te� pami�ta� o zmianie adresu Origin w swoim repozytorium. Inaczej nadal b�dzie commitowa� do repozytorium kolegi a nie do swojego