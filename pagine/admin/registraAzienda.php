<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
require '../../connect.php';  
require 'menuAdmin.php';

?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
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
            <center><h4>Registra una nuova azienda</h4></center>
            <hr style="margin:2%;">
            <form action="#" method="POST" class="form-group">
            <input type="text" class="form-control" name="nome" placeholder="Nome dell'azienda"><br>
            <input type="text" class="form-control" name="comune" placeholder="Comune"><br>
            <input type="text" class="form-control" name="indirizzo" placeholder="Indirizzo"><br>
            <input type="tel" class="form-control" name="telefono" placeholder="Numero di telefono"><br>
            <input type="email" class="form-control" name="email" placeholder="Email"><br>
            <input type="text" class="form-control" name="web" placeholder="Sito web"><br>
            <input type="text" class="form-control" name="note" placeholder="Aree funzionali">
            <br>
<div class="panel panel-default">
  <div class="panel-heading">Classi accettate:</div>
  <div class="panel-body">
      
    <h4>
                <input type="checkbox" value="3" name="c3">Classi terze&nbsp;&nbsp;&nbsp;


                        <input type="checkbox" value="4" name="c4">Classi quarte&nbsp;&nbsp;&nbsp;


                        <input type="checkbox" value="5" name="c5">Classi quinte
            </h4>
  </div>
</div>
            

            <input type="submit" value="Registra azienda" name="registra" class="btn btn-success">

            </form>    
                <?php
if(isset($_POST['registra']))
{
   $nome =$_POST['nome'];
   $comune=$_POST['comune'];
   $indirizzo=$_POST['indirizzo'];
   $telefono=$_POST['telefono'];
   $email=$_POST['email'];
   $web=$_POST['web'];
   $note=$_POST['note'];
   $classeAccettata="";
   if(isset($_POST['c3']))
   {
       $classeAccettata+=" 3";
   }
      if(isset($_POST['c4']))
   {
       $classeAccettata+=" 4";
   }
      if(isset($_POST['c5']))
   {
       $classeAccettata+=" 5";
   }
    
       $query="INSERT INTO `aziende`(`Azienda`, `Comune`, `Indirizzo`, `Telefono`, `Email`, `Web`, `Note`, `ClasseAccettata`) VALUES ('$nome','$comune','$indirizzo','$telefono','$email','$web','$note',$classeAccettata)";
       $risp=mysqli_query($link,$query) or die(mysqli_error($link));
}
       ?>

        </div>
    </div>
</html>