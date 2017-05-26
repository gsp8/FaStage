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
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
                <!-- JavaScript -->
<script src="//cdn.jsdelivr.net/alertifyjs/1.10.0/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/themes/bootstrap.min.css"/>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<script type="text/javascript">
//override defaults
alertify.defaults.transition = "slide";
alertify.defaults.theme.ok = "btn btn-primary";
alertify.defaults.theme.cancel = "btn btn-danger";
alertify.defaults.theme.input = "form-control";
alertify.defaults.glossary.title = 'FaStage info';

</script>
    </head>
    <body>

        <div class="container">
            <div class="jumbotron jumbotron-fluid">
                <center><h4>Elimina azienda<br><small>Seleziona le aziende da eliminare</small></h4></center>
                <hr style="margin:2%;">
                <table class="table table-bordered">
                    <tr>
                        <th><span class="glyphicon glyphicon-sort-by-order"></span>DELETE</th>
                        <th><span class="glyphicon glyphicon-home"></span>Azienda</th>
                        <th><span class="glyphicon glyphicon-calendar"></span>Email</th>
                        <th><span class="glyphicon glyphicon-saved"></span>Web</th>
                    </tr>
                    <form action="#" method="POST">
                <?php
require '../../connect.php';
$query = mysqli_query($link, "SELECT * FROM aziende") or die(mysqli_error($link));
while($result = mysqli_fetch_array($query))
    {

$idAzienda = $result['ID'];
$nome=$result['Azienda'];
$email=$result['Email'];
$web=$result['Web'];
                    echo "<tr class='warning'>";
                    echo "<td><center><input type='checkbox' name='$idAzienda'>$idAzienda</center></td><td>$nome</td><td>$email</td><td>$web</td><td></tr>";
    }
?>
                        <br>

                        <center><button class="btn btn-default" type="submit" name="registra"><span class="glyphicon glyphicon-floppy-saved"></span>   Elimina righe selezionate</button></center>
                        <br></form>
                </table>
            </div>
        </div>
        <hr>
    </body>
</html>

<?php
if(isset($_POST['registra']))

    {
$query = mysqli_query($link, "SELECT MIN(ID) AS min FROM aziende") or die(mysqli_error($link));
$min = mysqli_fetch_array($query);
$query2 = mysqli_query($link, "SELECT MAX(ID) AS max FROM aziende") or die(mysqli_error($link));
$max = mysqli_fetch_array($query2);
echo $max['max'] . "  min:" . $min['min'];
$deleted=array();
$i=0;
$j=0;
for($x=$min['min'];$x<=$max['max'];$x++)
{
if(isset($_POST[$x]))
    {
    $j++;
    $deleted[$i] = $x;
    $query = "DELETE FROM aziende WHERE ID='$x'";
    mysqli_query($link,$query) or die(mysqli_error($link));
    $i++;
}
}
$rrr= implode(', ', $deleted);
if($j>0)
    {
 echo "<script type='text/javascript'>


alertify
  .alert('Hai eliminato le aziende $rrr', function(){
    alertify.message('OK');
  });

</script>";
}
if($j==0)    {
 echo "<script type='text/javascript'>


alertify
  .alert('Non hai selezionato nessuna azienda!', function(){
    alertify.message('OK');
  });

</script>";
    }

    
    }

?>