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
            <center><h4>Informazioni sul sistema</h4></center>
            <hr style="margin:2%;">
       <?php
       require 'connect.php';
       $query="SELECT COUNT(*) AS users FROM utenti";
       $risp=mysqli_query($link,$query) or die(mysqli_error($link));
       $result=mysqli_fetch_array($risp);
       $users = $result['users'];
          echo"<ul class='list-group'>
  <li class='list-group-item'>
    <span class='badge'>$users</span>
    Utenti iscritti:
  </li>
</ul>";


       $query="SELECT COUNT(*) AS aziende FROM aziende";
       $risp=mysqli_query($link,$query) or die(mysqli_error($link));
       $result=mysqli_fetch_array($risp);
       $aziende = $result['aziende'];
    echo"<ul class='list-group'>
  <li class='list-group-item'>
    <span class='badge'>$aziende</span>
    Aziende presenti nel sistema:
  </li>
</ul>";

       $query="SELECT COUNT(*) AS prenotazioniConfermate FROM prenotazioni WHERE Conferma='1'";
       $risp=mysqli_query($link,$query) or die(mysqli_error($link));
       $result=mysqli_fetch_array($risp);
       $prenotazioniConfermate = $result['prenotazioniConfermate'];
           echo"<ul class='list-group'>
  <li class='list-group-item'>
    <span class='badge'>$prenotazioniConfermate</span>
    Prenotazioni confermate:
  </li>
</ul>";

       $query="SELECT COUNT(*) AS prenotazioni FROM prenotazioni WHERE Conferma='0'";
       $risp=mysqli_query($link,$query) or die(mysqli_error($link));
       $result=mysqli_fetch_array($risp);
       $prenotazioni = $result['prenotazioni'];
  echo"<ul class='list-group'>
  <li class='list-group-item'>
    <span class='badge'>$prenotazioni</span>
    Prenotazioni in attesa di conferma:
  </li>
</ul>";

       $query="SELECT COUNT(*) AS aziendeIscritte FROM loginazienda";
       $risp=mysqli_query($link,$query) or die(mysqli_error($link));
       $result=mysqli_fetch_array($risp);
       $aziendeIscritte = $result['aziendeIscritte'];
   echo"<ul class='list-group'>
  <li class='list-group-item'>
    <span class='badge'>$aziendeIscritte</span>
    Aziende iscritte:
  </li>
</ul>";

       ?>

        </div>
    </div>
</html>