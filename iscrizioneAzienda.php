
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    </head>
    <body>
        <?php session_start(); if(isset($_SESSION['user']))
        {
     header("Location: pagine/home.php");  
        }
        ?>
        
        <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">FaStage</a>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
    </ul>
      <form class="form-inline my-2 my-lg-0" action="#" method="POST">
      <div class="input-group">
      <span class="input-group-addon" id="sizing-addon2">@</span>
      <input type="text" class="form-control" name="loginEmail" placeholder="Email">&nbsp;
      <input class="form-control mr-sm-2" name="loginPassword" type="password" placeholder="Password">
  </div>
      
      <button class="btn btn-outline-success my-2 my-sm-0" name="login" type="submit">Accedi</button>&nbsp;
      <a href="#" ><small>Hai dimenticato la password?</small></a>
    </form>
  </div>
</nav>
        <br>
    <div class="container">
        <div class="jumbotron jumbotron-fluid">
            <center><h4>Crea un account su FaStage</h4></center>
            <hr style="margin:2%;">
            <form style="margin-left:25%; margin-right:25%;" action="#" method="POST">
                <div class="form-group">
                    <label>Nome azienda</label>
                    <input type="text" required="required" class="form-control" name="nome">
                </div>
                
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" class="form-control" required="required" name="email">
                </div>
                <div class="form-group">
                    <label>Password (almeno 6 caratteri)</label>
                    <input type="password" minlength="6" required="required" class="form-control" name="password">
                </div>
                <center><input class="btn btn-primary" name="registra" type="submit" value="Iscriviti ora"></center>
                <a href="index.php" ><small>Sei uno studente?</small></a>
                
            </form>
            
        </div>
    </div>
        <hr>
    <center><h3><small>&copy;Progetto maturità 2017-2018</small></h3></center>
    <center><h4><small><u>Giorgio Gasperetti - Francesco Gionghi</u></small></h4></center>
    </body>
</html>
<?php
require 'connect.php';
if(isset($_POST['login']))
{
    $email = $_POST["loginEmail"];
    $password = $_POST["loginPassword"];
    $password = base64_encode($password);
    
$query1="SELECT u.Email, u.Password, u.FirstLogin FROM utenti u WHERE (u.Email='$email' AND u.Password='$password')";
$query2= "SELECT l.Email, l.Password, l.FirstLogin FROM loginazienda l WHERE (l.Email='$email' AND l.Password='$password')";
$risp1= mysqli_query($link, $query1) or die("Errore-> " . mysqli_error($link));
$riga1=mysqli_fetch_array($risp1);  
$esiste=$riga1['Email'];
if ($esiste==NULL)
{
        $risp2= mysqli_query($link, $query2) or die("Errore-> " . mysqli_error($link));
        $riga2=mysqli_fetch_array($risp2);  
        $esiste2=$riga2['Email'];
        
        if ($esiste2==NULL){
            
            echo "<center><div class='alert alert-warning'>Username o password errati!</div></center>";
            exit(0);
        }
        else {
            
            session_start();
            $_SESSION['user'] = $email;


            if ($riga['FirstLogin'] == '1') {
                header('Location: profile/profileAzienda.php');
            } else {
                header('Location: pagine/home.php'); //da modificare
            }
            exit(0);
        }
        echo "<center><div class='alert alert-warning'>Username o password errati!</div></center>";
        exit(0);
        
}

else
{
    
    $_SESSION['user']=$email;
    
    
   if($riga['FirstLogin']=='1')
   {
       header('Location: profile/profile.php');
   }
 else {
       header('Location: pagine/home.php');
 }

}
}

if(isset($_POST['registra']))
{

//PHP CHE GESTISCE IL FORM ISCRIZIONE
$nome=$_POST['nome'];
$email=$_POST['email'];
$password=$_POST['password'];
//$repassword=$_POST['repassword'];

$password = base64_encode($password);


$query="INSERT INTO loginazienda (Nome, Email, Password) VALUES ('$nome', '$email', '$password)";
$risp= mysqli_query($link, $query) or die("Errore-> " . mysqli_error($link));

header("Location: index.php");
}