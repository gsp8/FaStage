<?php
require '../../connect.php';  
require 'menuAdmin.php';
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="stile.css">
    </head>
    <body>
        
        <div>
        <button value='BACK' class='btn btn-default'><a href='javascript:history.go(-1)'>Go Back</a></button>
        <form action="#" method="POST" class="form-group">

       <input type="submit" class="btn btn-success" name="modifica" value="MODIFICA" style="display:inline;">
       </div>
        
        <center><h1>Modifica aziende</h1></center>
                <table class="table table-bordered">
                    <tr>
                        <th>AZIENDA</th>
                        <th>COMUNE</th>
                        <th>INDIRIZZO</th>
                        <th>TELEFONO</th>
                        <th>EMAIL</th>
                        <th>WEB</th>
                        <th>NOTE</th>
                        <th>CLASSE ACCETTATA</th>
                    </tr>
                    
<?php

$query = mysqli_query($link, "SELECT * FROM aziende"); 
$query2 = mysqli_query($link, "SELECT MIN(ID) AS idMin FROM aziende") or die(mysqli_error($link)); 
$idMin = mysqli_fetch_array($query2) ;
$riga=$idMin['idMin'];

while($cicle=mysqli_fetch_array($query)){
    if($riga%2)
    {
    echo "<tr class='warning'>";
echo "<td><input type='text' name='" . $riga . "0' value='".$cicle['Azienda']."'></td>";
    echo "<td><input type='text' name='" . $riga . "1' value='".$cicle['Comune']."'></td>";
    echo "<td><input type='text' name='" . $riga . "2' value='".$cicle['Indirizzo']."'></td>";
    echo "<td><input type='text' name='" . $riga . "3' value='".$cicle['Telefono']."'></td>";
    echo "<td><input type='text' name='" . $riga . "4' value='".$cicle['Email']."'></td>";
    echo "<td><input type='text' name='" . $riga . "5' value='".$cicle['Web']."'></td>";
    echo "<td><input type='text' name='" . $riga . "6' value='".$cicle['Note']."'></td>";
    
    echo "<td><input class='classeAccettata' type='text' name='" . $riga . "7' value='".$cicle['ClasseAccettata']."'></td></tr>";
    }
    else
    {
        echo "<tr class='success'>";
echo "<td><input type='text' name='" . $riga . "0' value='".$cicle['Azienda']."'></td>";
    echo "<td><input type='text' name='" . $riga . "1' value='".$cicle['Comune']."'></td>";
    echo "<td><input type='text' name='" . $riga . "2' value='".$cicle['Indirizzo']."'></td>";
    echo "<td><input type='text' name='" . $riga . "3' value='".$cicle['Telefono']."'></td>";
    echo "<td><input type='text' name='" . $riga . "4' value='".$cicle['Email']."'></td>";
    echo "<td><input type='text' name='" . $riga . "5' value='".$cicle['Web']."'></td>";
    echo "<td><input type='text' name='" . $riga . "6' value='".$cicle['Note']."'></td>";
    echo "<td><input class='classeAccettata' type='text' name='" . $riga . "7' value='".$cicle['ClasseAccettata']."'></td></tr>";
    }
    $riga++;
} 
        ?>
             </table> 
                    
</form>
    </body>
</html>

<?php
if(isset($_POST['modifica']))
{
$query2 = mysqli_query($link, "SELECT MIN(ID) AS idMin FROM aziende") or die(mysqli_error($link)); 

$idMin = mysqli_fetch_array($query2) ;
    
echo $idMin['idMin'];
    
$query1 = mysqli_query($link, "SELECT COUNT(ID) AS nRighe FROM aziende") or die(mysqli_error($link)); 

$nRighe = mysqli_fetch_array($query1) ;
    
echo $nRighe['nRighe'];

for($x=$idMin['idMin']; $x<$nRighe['nRighe']; $x++)
{
    $azienda = $_POST[$x . '0'];
    $comune = $_POST[$x . '1'];
    $indirizzo = $_POST[$x . '2'];
    $telefono = $_POST[$x . '3'];
    $email = $_POST[$x . '4'];
    $web = $_POST[$x . '5'];
    $note = $_POST[$x . '6'];
    $classe = $_POST[$x . '7'];
    $query = mysqli_query($link, "UPDATE aziende SET Azienda='$azienda', Comune='$comune', Indirizzo='$indirizzo', Telefono='$telefono', Email='$email', Note='$note', ClasseAccettata='$classe' WHERE ID='$x'") or die(mysqli_error($link)); 
}

}
?>