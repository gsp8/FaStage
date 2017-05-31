<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    </head>
    <body>

        <div class="container">
            <div class="jumbotron jumbotron-fluid">
                <center><h4>Prenotazioni (richiesta stage)</h4></center>
                <hr style="margin:2%;">
                <table class="table table-bordered">
                    <tr>
                        <th><span class="glyphicon glyphicon-sort-by-order"></span>ID</th>
                        <th><span class="glyphicon glyphicon-user"></span>Studente</th>
                        <th><span class="glyphicon glyphicon-home"></span>Azienda</th>
                        <th><span class="glyphicon glyphicon-calendar"></span>Data richiesta</th>
                        <th><span class="glyphicon glyphicon-saved"></span>Conferma</th>
                    </tr>
                    <form action="#" method="POST">
                <?php
require 'connect.php';
$query2 = mysqli_query($link, "SELECT MIN(ID) AS idMin FROM prenotazioni") or die(mysqli_error($link)); 
$idMin = mysqli_fetch_array($query2) ;
$x=$idMin['idMin'];
$query = mysqli_query($link, "SELECT * FROM prenotazioni") or die(mysqli_error($link));
while($result = mysqli_fetch_array($query))
    {


$idAzienda = $result['Azienda'];
$query2 = mysqli_query($link, "SELECT * FROM aziende WHERE ID='$idAzienda'") or die(mysqli_error($link));
$result2 = mysqli_fetch_array($query2);

$email = $result['Email'];
$nomeAzienda = $result2['Azienda'];
$data = $result['Data'];
                if($result['Conferma'] == 0) {
                    echo "<tr class='warning'>";
                    echo "<td>$x</td><td>$email</td><td>$nomeAzienda</td><td>$data</td><td>
            <button name='$x' type='sumbit' class='btn btn-outline-primary'>
      <span class='glyphicon glyphicon-thumbs-up'></span>  Conferma
    </button>";
                }
    $x++;
    }
?>
                    </form>
                </table>
            </div>
        </div>
        <hr>
    </body>
</html>

<?php
$query = mysqli_query($link, "SELECT MIN(ID) AS min FROM prenotazioni") or die(mysqli_error($link));
$min = mysqli_fetch_array($query);
$query2 = mysqli_query($link, "SELECT MAX(ID) AS max FROM prenotazioni") or die(mysqli_error($link));
$max = mysqli_fetch_array($query2);
for($x=$min['min'];$x<=$max['max'];$x++)
{
if(isset($_POST[$x]))
    {
    $query = "UPDATE prenotazioni SET Conferma='1' WHERE ID='$x'";
    mysqli_query($link,$query) or die(mysqli_error($link));
    echo "Confermo ID=$x";
}
}
?>