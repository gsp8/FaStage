<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="//cdn.jsdelivr.net/alertifyjs/1.10.0/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.10.0/css/themes/bootstrap.min.css"/>
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

        <?php

        require 'admin/menuAdmin.php';
        require '../connect.php';
        $query = "SELECT * FROM aziende";
        $myprof = $_SESSION['user'];
$risp = mysqli_query($link, $query) or die("Errore " . mysql_error());
$query2 = mysqli_query($link, "SELECT MIN(ID) AS idMin FROM aziende") or die(mysqli_error($link)); 
$idMin = mysqli_fetch_array($query2) ;
$i=$idMin['idMin'];
while(($table = mysqli_fetch_array($risp)))
 {
   $nome =$table['Azienda'];
   $comune=$table['Comune'];
   $indirizzo=$table['Indirizzo'];
   $telefono=$table['Telefono'];
   $email=$table['Email'];
   $web=$table['Web'];
   $note=$table['Note'];
   $classeAccettata=$table['ClasseAccettata'];
   $postiDisponibili = $table['PostiDisponibili'];
   $query3 = mysqli_query($link, "SELECT COUNT(*) AS occupati FROM prenotazioni WHERE Azienda='$i' AND Conferma='1'");
   $posti= mysqli_fetch_array($query3);
   $postiOccupati = $posti['occupati'];
   if($nome==NULL)
       {
       $nome='Nome mancante';
       }
   
   if($indirizzo==NULL)
       {
       $indirizzo='Nessuna informazione';
       }
   if($telefono==NULL)
       {
       $telefono='Nessuna informazione';
       }
   if($email==NULL)
       {
      $email= 'Nessuna informazione';
       }
   if($web==NULL)
       {
       $web='Nessuna informazione';
       }
   if($note==NULL)
       {
       $note='Nessuna informazione';
       }
   if($classeAccettata==NULL)
       {
       $classeAccettata='Nessuna informazione';
       }
    echo "<!DOCTYPE html>
<html>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://www.w3schools.com/w3css/4/w3.css'>
<body>
<center>
<div class='w3-container'>
<form action='#' method='POST'>
  <div class='w3-card-4' style='width:70%'>
    <header class='w3-container w3-light-grey'>";
    if($postiDisponibili==$postiOccupati)
    {
        echo "<h3 style='float:right;color:red;'><span class='glyphicon glyphicon-user'></span>   $postiOccupati / $postiDisponibili</h3>";
    }
    else
    {
        echo "<h3 style='float:right;color:green;'><span class='glyphicon glyphicon-user'></span>   $postiOccupati / $postiDisponibili</h3>";
    }
    echo "
      <h3 style='text-transform:uppercase;'>$nome<small> $comune</small></h3>
    </header>
    <div class='w3-container'>
      <p><span class='glyphicon glyphicon-road'></span>  $indirizzo</p>
      <p><span class='glyphicon glyphicon-envelope'></span>  $email</p>
      <hr>
      <p><span class='glyphicon glyphicon-phone-alt'></span>  $telefono</p> <br>
      <p><span class='glyphicon glyphicon-globe'></span><a href='$web'>  $web</a></p>
      <p><span class='glyphicon glyphicon-list-alt'></span>  $note</p>
   <p><span class='glyphicon glyphicon-ok-circle'></span>  $classeAccettata</p>
    </div>
    <button class='w3-button w3-block w3-dark-grey' name='$i' type='submit'><span class='glyphicon glyphicon-open'></span> Prenota</button>
    <button class='w3-button w3-block w3-dark-grey'><span class='glyphicon glyphicon-heart-empty'></span>  Aggiungi ai preferiti</button>
    </form>
  </div>
</div>
   </center>
</body>
</html>
<br>
";




$i++;
 }

       
        ?>
    </body>
</html>


<?php


$query2 = mysqli_query($link, "SELECT MIN(ID) AS idMin FROM aziende") or die(mysqli_error($link));
$idMin = mysqli_fetch_array($query2) ;

$query3 = mysqli_query($link, "SELECT MAX(ID) AS idMax FROM aziende") or die(mysqli_error($link));
$idMax = mysqli_fetch_array($query3) ;

  for($x=$idMin['idMin'];$x<=$idMax['idMax'];$x++){

        if (isset($_POST[$x]))
{

$query = mysqli_query($link, "SELECT *  FROM aziende WHERE ID='$x'") or die(mysqli_error($link));
$info = mysqli_fetch_array($query) ;
$nome = $info['Azienda'];

    echo "<script type='text/javascript'>


alertify
  .alert('Hai inviato una richiesta di prenotazione per <b>$nome</b>', function(){
    alertify.message('OK');
  });

</script>";
    $query = "INSERT INTO prenotazioni (Email, Azienda) VALUES ('$myprof','$x')";
    mysqli_query($link,$query) or die(mysqli_error($link));
}
        }



?>