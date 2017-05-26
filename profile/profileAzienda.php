
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <?php require '../pagine/admin/menuAdmin.php';?>
        <div class="container">
        <div class="jumbotron jumbotron-fluid">
            
            <center><h3>Completa il profilo della tua azienda</h3></center>
  <hr class="my-4">


    
        <?php
        $myprof = $_SESSION['user'];
        
        require '../connect.php';
        
        $query = "SELECT * FROM loginazienda WHERE Email='$myprof'";
        
       $res = mysqli_query($link, $query) or die(mysqli_error($link));
        
        while($cicle = mysqli_fetch_array($res))
        {
            
            echo "<form action='#' method='POST'>";
            echo "<div style='margin-left:46%;margin-right:46%;'>";
            echo "<label>Nome</label><input required='required' type='text' value='".$cicle['Nome']. "' name='Nome'><br><br>";
            echo "<label>Email</label><input required='required' type='email' value='".$cicle['Email']. "' name='Email'><br><br>";

            }

        ?>
  
  <label>Comune</label><input required='required' type='text' value='' name='Comune'><br><br>
    <label>Indirizzo</label><input required='required' type='text' value='' name='Indirizzo'><br><br>
      <label>Telefono</label><input required='required' type='text' value='' name='Telefono'><br><br>
      <label>Web</label><input required='required' type='text' value='' name='Web'><br><br>
      <label>Note (aree funzionali)</label><input required='required' type='text' value='' name='Note'><br><br>
      <label>Classe accettata</label><input required='required' type='text' value='' name='ClasseAccettata'><br><br>

  <p class="lead">
  <center><button class="btn btn-primary btn-lg" name="registra" type="submit">Procedi</button></center>
  </p>
    </div>
        </div>
    </form>
    </body>
</html>

<?php

require '../connect.php';


if(isset($_POST['registra']))
{

//PHP CHE GESTISCE IL FORM ISCRIZIONE
$nome=$_POST['Nome'];
$comune=$_POST['Comune'];
$indirizzo=$_POST['Indirizzo'];
$email=$_POST['Email'];
$classe=$_POST['ClasseAccettata'];
$telefono=$_POST['Telefono'];
$web=$_POST['Web'];
$note=$_POST['Note'];


$query="INSERT INTO aziende (Azienda, Comune, Indirizzo, Telefono, Email, Web, Note, ClasseAccettata) VALUES ('$nome', '$comune', '$indirizzo', '$telefono', '$email', '$web', '$note', '$classe')";
$risp= mysqli_query($link, $query) or die("Errore-> " . mysqli_error($link));

$query2="UPDATE loginazienda l, aziende a SET l.FirstLogin=0, l.FkAziende=a.ID WHERE a.Email='$myprof' AND l.Email='$myprof'";
$risp2= mysqli_query($link, $query2) or die("Errore-> " . mysqli_error($link));

header("Location: ../pagine/home.php");
}
