<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
</html>
<?php


require '../../connect.php';

$query = "SELECT * FROM aziende";
$risp = mysqli_query($link, $query) or die (mysqli_error());

echo "<table class='table striped'>";
echo "<form action='deleteRegistrazione.php' method='POST'>";
echo "<tr><th>DELETE</th><th>Azienda</th><th>Comune</th><th>Indirizzo</th> <th>Telefono</th><th>Email</th><th>Sito Web</th><th>Note</th><th>Classe Accettata</th></td>";
$i = 0;
while($row = mysqli_fetch_array($risp))
{
    $i++;
$Azienda = $row['Azienda'];
$Comune = $row['Comune'];
$Indirizzo = $row['Indirizzo'];
$Telefono = $row['Telefono'];
$Email = $row['Email'];
$Web = $row['Web'];
$Note = $row['Note'];
$Classe = $row['ClasseAccettata'];

if ($i%2==0){
//Il nome della riga della checkbox ha lo stesso nome dell'Azienda e sarà ciò che passiamo tramite POST
echo "<tr class='success'><td><center><input type='checkbox' name='$Azienda'></center></td><td>$Azienda</td><td>$Comune</td><td>$Indirizzo</td><td>$Telefono</td><td>$Email</td><td>$Web</td><td>$Note</td><td>$Classe</td>";
}
else
{
    echo "<tr class='info'><td><center><input type='checkbox' name='$Azienda'></center></td><td>$Azienda</td><td>$Comune</td><td>$Indirizzo</td><td>$Telefono</td><td>$Email</td><td>$Web</td><td>$Note</td><td>$Classe</td>";

}
}
echo "<br><br>";
echo "<center><input type='submit' value='Elimina righe selezionate' name='elimina' class='btn btn-success'</center>";
echo "</form>";
echo "</table>";