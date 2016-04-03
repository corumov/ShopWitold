<?php


    $servername = "localhost";
    $username = " 'Sklep_User";
    $password = " 'Sklep_User";
    $baseName = "SklepInternetowy";

// Tworzymy nowe połączenie
$conn = new mysqli($servername, $username, $password, $baseName);
// Sprawdzamy czy połączcenie się udało
if ($conn->connect_error) {
    die("Polaczenie nieudane. Blad: " . $conn->connect_error."<br>");
}

