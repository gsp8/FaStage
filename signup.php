<html>
    <head>
    <link rel="stylesheet" href="css/stile.css">
     <script type="text/javascript" src="script/op.js"></script>
    </head>
<body>
    
<div class="login-page">
    
  <div class="form">
    <form class="login-form" action="#" method="POST" name="registrazione" onsubmit="return CampiStudente();">
            <input type="text" placeholder="nome" id="nome" name="nome" maxlength="15">
            <input type="text" placeholder="cognome" id="cognome" name="cognome" maxlength="15">
            <input type="text" placeholder="email" id="email" name="email" maxlength="40" >
            <input type="text" placeholder="classe" id="classe" name="classe" maxlength="1">
            <input type="text" placeholder="indirizzo" id="indirizzo" name="indirizzo" maxlength="5" style="text-transform: uppercase;">
            <input type="text" placeholder="sezione" id="sezione" name="sezione" maxlength="1" style="text-transform: uppercase;">
            <input type="password" placeholder="password" id="password" name="password" maxlength="15">
            <input type="password" placeholder="conferma password" id="repassword" name="repassword" maxlength="15">
            <input type="submit" name="registra" value="CREATE" class="button">
      <p class="message">Already registered? <a href="index.php">Sign In</a></p>
    </form>
  </div>
</div>
</body>
</html>

<?php

require 'connect.php';


if(isset($_POST['registra']))
{

//PHP CHE GESTISCE IL FORM ISCRIZIONE
$nome=$_POST['nome'];
$cognome=$_POST['cognome'];
$email=$_POST['email'];
$classe=$_POST['classe'];
$indirizzo=$_POST['indirizzo'];
$sezione=$_POST['sezione'];
$password=$_POST['password'];
//$repassword=$_POST['repassword'];

$password = base64_encode($password);


$query="INSERT INTO utenti (Nome, Cognome, Email, Classe, Indirizzo, Sezione, Password) VALUES ('$nome', '$cognome', '$email', '$classe', '$indirizzo', '$sezione', '$password')";
$risp= mysqli_query($link, $query) or die("Errore-> " . mysqli_error($link));

echo "<center><div class='alert alert-success'>Iscrizione effettuata</div></center>";
}



?>