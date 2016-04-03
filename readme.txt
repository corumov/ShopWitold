Kurs PHP – Warsztaty IV
Celem warsztatów jest napisanie prostego sklepu internetowego. Projekt ma byæ napisany obiektowo i do ka¿dej z klas maj¹ zostaæ napisane testy.
Nastêpnym utrudnieniem jest fakt ¿e projekt jest grupowy (grupy po 2 osoby).
Aplikacja ma implementowaæ nastêpuj¹ce funkcjonalnoœci:
? Przedmioty: Sklep musi mieæ przedmioty. Przedmiot musi mieæ swoj¹ nazwê, opis, cenê.
? Zdjêcia przedmiotów: Ka¿dy przedmiot mo¿e posiadaæ kilka zdjêæ. Zdjêcie w MySQL powinno trzymaæ œcie¿kê do zdjêcia na dysku i id przedmiotu do którego siê odnosi.
? U¿ytkownicy: Sklep powinien mieæ mo¿liwoœæ za³o¿enia konta do robienia zakupów (bez tego robienie zakupów nie powinno byæ mo¿liwe). U¿ytkownik powinien mieæ nastêpuj¹ce dane: Imiê, nazwisko, email, has³o, adres. U¿ytkownik powinien móc zobaczy swoj¹ historiê zakupów.
? Zamówienie: Zatwierdzony koszyk zostaje przetworzony w zamówienie. Posiada ono informacje na temat kto z³o¿y³ to zamówienie, statusu zamówienie (oczekuj¹ce, z³o¿one, op³acone, zrealizowane), i przedmiotów i ich iloœci w tym zamówieniu.
Zamówienie oczekuj¹ce to zamówienie jeszcze nie zatwierdzone przez u¿ytkownika (czyli jego koszyk).
? Administratorzy: Strona ma implementowaæ konta administratorów (w osobnej tabelce od u¿ytkowników). Maj¹ oni posiadaæ tylko maila i has³o.
Aplikacja musi mieæ nastêpuj¹ce strony:
? Strona g³ówna: Strona g³ówna naszego sklepu. Ma posiadaæ miejsce do zalogowania siê, link do rejestracji, menu z wszystkimi grupami przedmiotów i karuzele z kilkoma wybranymi przedmiotami.
? Strona rejestracji: Strona do rejestracji u¿ytkownika. Ma pobieraæ wszystkie informacje o u¿ytkowniku
? Panel u¿ytkownika: Strona ta ma mieæ informacje o u¿ytkowniku, dawaæ opcje zmiany tych informacji, pokazywaæ wszystkie poprzednie zakupy tego u¿ytkownika. Powinna byæ mo¿liwoœæ zobaczenia tylko swojej w³asnej strony!
? Stronê zamówienie: Strona ta ma pokazywaæ wszystkie informacje na temat zamówienia. U¿ytkownik powinien móc widzieæ tylko swoje zamówienia!
? Stronê przedmiotu: Przedmiot powinien wyœwietlaæ informacjê o sobie, swoje zdjêcia w postaci karuzeli i dawaæ mo¿liwoœæ dodania siê do koszyka obecnie zalogowanego u¿ytkownika.
? Stronê koszyka: Strona koszyka powinna pokazaæ wszystkie przedmioty które s¹ w koszyku, daæ mo¿liwoœæ zmieniæ ich iloœæ lub ca³kowicie je usun¹æ, pokazywaæ ³¹czn¹ kwotê zamówienia, daæ mo¿liwoœæ ca³kowitego usuniêcia wszystkiego z koszyka i mo¿liwoœæ z³o¿enia zamówienia z aktualnego koszyka.
? Stronê zamówienia: Strona ta musi przyj¹æ wszystkie informacje dotycz¹ce zamówienia – adres wysy³ki itp. Musi podaæ ca³kowit¹ kwotê zamówienia i wyœwietliæ informacjê dotycz¹ce p³atnoœci.
Aplikacja musi zawieraæ te¿ panel administracyjny. Ma on byæ dostêpny po wejœciu na podstronê /panel i ma zawieraæ:
? Strona g³ówna: Strona g³ówna naszego panelu. Ma mieæ linki do: zarz¹dzania grupami, zarz¹dzania przedmiotami, zarz¹dzania u¿ytkownikami, zarz¹dzania zamówieniami.
? Zarz¹dzanie przedmiotami: Administrator powinien mieæ mo¿liwoœæ oddania lub usuniêcia przedmiotów
? Zarz¹dzanie u¿ytkownikami: Administrator powinien mieæ mo¿liwoœæ zobaczenia danych u¿ytkownika, wszystkich jego zakupów i usuniêcia takiego u¿ytkownika.
? Zarz¹dzanie zamówieniami: Administrator powinien widzieæ wszystkie zamówienia (pogrupowane po ich aktualnym statusie). Powinien móc zmieniæ status zamówienia, usun¹æ dane zamówienie i wys³aæ wiadomoœæ do danego klienta na temat tego zamówienia.
Podstawowy layout stron g³ównych zostanie zaprezentowany na zajêciach.
Zadanie 1. Przygotowanie.
Dobierzcie siê w pary. W parze za³ó¿cie jedno repozytorium na githubie (musi siê znajdowaæ na jednym z kont – obojêtnie którym). Podepnijcie swoje nowe projekty do repozytorium i zobaczcie czy dzia³a (np. poprzez dodanie pliku readme na githubie i œci¹gniêciu go na oba komputery).
Zadanie 2. Po³¹czenie do bazy danych.
Na jednym z komputerów wspólnie stwórzcie plik z po³¹czeniem do bazy danych. Dane do po³¹czenia ka¿dy powinien trzymaæ w osobnym pliku (np. config.php) który ma siê nie znajdowaæ na repozytorium (u¿yjcie do tego .gitignore).
Zadanie 3a. Klasa Przedmiotu.
Stwórz (w katalogu /src) klasê dla przedmiotu. Przedmiot ma posiadaæ nazwê, cenê, opis, i dostêpnoœæ (iloœæ na stanie - int). Przygotuj wszystkie funkcje które mog¹ byæ przydatne dla tej klasy. Przygotuj relacje 1-wiele z tabelk¹ która trzyma zdjêcia w bazie danych.
Zadanie 3b. Klasa U¿ytkownika.
Stwórz (w katalogu /src) klasê da u¿ytkownika. U¿ytkownik ma posiadaæ wszystkie typowe informacje: Imiê, Nazwisko, mail i has³o. Przygotuj wszystkie potrzebne funkcje przydatne dla tej klasy.
Zadanie 3c. Synchronizacja.
Wyœlijcie swoje commity na repozytorium i pobierzcie kod drugiej osoby. Pamiêtajcie o modyfikacji swoich baz danych! Przetestujcie kod drugiej osoby (poprzez ma³y skrypt który tworzy obiekt danej klasy i na niej dzia³a). Zobaczcie czy wszystko jest ok – je¿eli nie to wspólnie znajdŸcie b³¹d i dodajcie go do repozytorium.
Zadanie 4a. Klasa Administratora i wiadomoœci.
Stwórz klasê dla Administratora. Ma on posiadaæ nazwê, mail i has³o. Przygotuj wszystkie funkcje które mog¹ byæ przydatne dla tej klasy. Przygotuj klasê wiadomoœci – powinna mieæ ona tekst wiadomoœci i usera do którego jest skierowana. Wiadomoœci w naszym systemie maj¹ s³u¿yæ do powiadamiania u¿ytkownika o ró¿nych sytuacjach (np. wys³aniu do niego paczki, przyjêciu zamówienia etc). Administrator powinien mieæ mo¿liwoœæ wysy³ania wiadomoœci. Dodaj do klasy User funkcje które zwracaj¹ wszystkie wys³ane do niego wiadomoœci.
Zadanie 4b. Klasa Zamówienia.
Stwórz klasê da zamówienia. Ma ona posiadaæ relacje 1-wiele z u¿ytkownikiem i wiele-wiele z przedmiotami. Poza tym ma mieæ swój stan (niez³o¿one, z³o¿one, op³acone, zrealizowane). Dodaj do klasy User funkcjê zwracaj¹ce jego koszyk i wszystkie zamówienie (poza koszykiem).
Zadanie 4c. Synchronizacja.
Wyœlijcie swoje commity na repozytorium i pobierzcie kod drugiej osoby. Przetestujcie kod drugiej osoby (poprzez ma³y skrypt który tworzy obiekt danej klasy i na niej dzia³a). Zobaczcie czy wszystko jest ok – je¿eli nie to wspólnie znajdŸcie b³¹d i dodajcie go do repozytorium.
Zadanie 5a. Panel administracyjny.
Stwórz panel administracyjny (w katalogu /admin) wed³ug podanych wczeœniej wytycznych.
Zadanie 5b. Sklep.
Stwórz sklep (w katalogu /shop) wed³ug podanych wczeœniej wytycznych.
Je¿eli ukoñczysz swoje funkcjonalnoœci wczeœniej ni¿ druga osoba, to podzielcie siê jej prac¹.
Zadanie 5c. Synchronizacja.
Wyœlijcie swoje commity na repozytorium i pobierzcie kod drugiej osoby. Przetestujcie kod drugiej osoby (poprzez ma³y skrypt który tworzy obiekt danej klasy i na niej dzia³a). Zobaczcie czy wszystko jest ok – je¿eli nie to wspólnie znajdŸcie b³¹d i dodajcie go do repozytorium.
Je¿eli ukoñczysz swoje funkcjonalnoœci wczeœniej ni¿ druga osoba, to podzielcie siê jej prac¹.
Koniec.
Pod koniec pamiêtajcie o tym ¿eby osoba która nie ma repozytorium zrobi³a form na swoje konto githuba. Dziêki temu bêdzie mia³¹ takie samo repozytorium u siebie. Osoba która to zrobi musi te¿ pamiêtaæ o zmianie adresu Origin w swoim repozytorium. Inaczej nadal bêdzie commitowaæ do repozytorium kolegi a nie do swojego