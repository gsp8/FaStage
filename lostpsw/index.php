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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    </head>
    <body>
    <div class="container">
        <div class="jumbotron jumbotron-fluid">
            <center><h4>Password dimenticata?</h4></center>
            <hr style="margin:2%;">
            <form style="margin-left:25%; margin-right:25%;" action="#" method="POST">
                <div class="form-group">
                    <label>Inserisci la tua email</label><br>
                    <input type="email" required="required" class="form-control" name="email">
                </div>
                <center><input class="btn btn-primary" name="registra" type="submit" value="Inviami una mail"></center>                
            </form>
            
        </div>
    </div>
</html>
<?php
require 'connect.php';

if(isset($_POST['registra']))
{

session_start();
$myprof=$_SESSION['user'];
$email=$_POST['email'];

$password = randomPassword();


// definisco mittente e destinatario della mail
$nome_mittente = "FaStage";
$mail_mittente = "fastage@pswlost.it";
$mail_destinatario = $email;

// definisco il subject ed il body della mail
$mail_oggetto = "FaStage password dimenticata";
$mail_corpo = "La tua nuova password è: $password";

// aggiusto un po' le intestazioni della mail
// E' in questa sezione che deve essere definito il mittente (From)
// ed altri eventuali valori come Cc, Bcc, ReplyTo e X-Mailer
$mail_headers = "From: " .  $nome_mittente . " <" .  $mail_mittente . ">\r\n";
$mail_headers .= "Reply-To: " .  $mail_mittente . "\r\n";
$mail_headers .= "X-Mailer: PHP/" . phpversion();

if (mail($mail_destinatario, $mail_oggetto, $mail_corpo, $mail_headers))
  echo "Messaggio inviato con successo a " . $mail_destinatario;
else
  echo "Errore. Nessun messaggio inviato.";


$password = base64_encode($password);
$query="UPDATE utenti SET Password='$password' WHERE Email='$myprof'";
$risp= mysqli_query($link, $query) or die("Errore-> " . mysqli_error($link));
echo "<script type='text/javascript'>


alertify
  .alert('Controlla la tua mail per la nuova password.', function(){
    alertify.message('OK');
  });

</script>";
}


function randomPassword() {
    $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    $pass = array(); //remember to declare $pass as an array
    $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
    for ($i = 0; $i < 7; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n];
    }
    return implode($pass); //turn the array into a string
}