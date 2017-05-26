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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <?php require '../pagine/admin/menuAdmin.php';?>
        <div class="container">
        <div class="jumbotron jumbotron-fluid">
            
            <center><h3>Completa il tuo profilo</h3></center>
  <hr class="my-4">


    
        <?php
        $myprof = $_SESSION['user'];
        
        require '../connect.php';
        
        $query = "SELECT * FROM utenti WHERE Email='$myprof'";
        
       $res = mysqli_query($link, $query) or die(mysqli_error($link));
        
        while($cicle = mysqli_fetch_array($res))
        {
            if($cicle['Privilegi']=='1')
            {
                $cicle['Privilegi']='Amministratore';
            }
            else
            {
                $cicle['Privilegi']='Studente';
            }
            echo "<form action='#' method='POST'>";
            echo "<div style='margin-left:46%;margin-right:46%;'>";
            echo "<label>Nome</label><input required='required' type='text' value='".$cicle['Nome']. "' name='nome'><br><br>";
            echo "<label>Cognome</label><input required='required' type='text' value='".$cicle['Cognome']. "' name='cognome'><br><br>";
            echo "<label>Email</label><input required='required' type='email' value='".$cicle['Email']. "' name='email'><br><br>";
            echo "<label>Classe</label><input required='required' type='text' value='".$cicle['Classe']. "' name='classe'><br><br>";
            echo "<label>Indirizzo</label><input required='required' type='text' value='".$cicle['Indirizzo']. "' name='indirizzo'><br><br>";
            echo "<label>Sezione</label><input required='required' type='text' value='".$cicle['Sezione']. "' name='sezione'><br><br>";
            echo "<label>Privilegi</label><input required='required' type='text' value='".$cicle['Privilegi']. "' name='privilegi' disabled><br><br></div>";
            }
       
        
        
        ?>
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
$nome=$_POST['nome'];
$cognome=$_POST['cognome'];
$email=$_POST['email'];
$classe=$_POST['classe'];
$indirizzo=$_POST['indirizzo'];
$sezione=$_POST['sezione'];


$query="UPDATE utenti SET Nome='$nome', Cognome='$cognome', Email='$email', Classe='$classe', Indirizzo='$indirizzo', Sezione='$sezione', FirstLogin=0 WHERE Email='$myprof'";
$risp= mysqli_query($link, $query) or die("Errore-> " . mysqli_error($link));



header("Location: ../pagine/home.php");
}