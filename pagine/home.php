<?php

require 'admin/menuAdmin.php';


?>
<html>
    <head>
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

</html> 
       

<?php
require '../connect.php';
$myprof = $_SESSION['user'];
$query = "SELECT * FROM aziende";

$risp = mysqli_query($link, $query) or die("Errore " . mysql_error());
$query2 = mysqli_query($link, "SELECT MIN(ID) AS idMin FROM aziende") or die(mysqli_error($link)); 
$idMin = mysqli_fetch_array($query2) ;
$i=$idMin['idMin'];

echo "<form action='#' method='POST' style='width: 50%;float:left;'>";
echo "<div class='container'>";
echo "<div class='jumbotron-col10'>";
while(($table = mysqli_fetch_array($risp)))
 {
    if(empty($table['Classe']))
    {
        $table['Classe'] = " Nessuna informazione";
    }
echo "<center>";
if($i%2==0)
{
echo "<div class='panel panel-success'>";
echo "<div class='panel-heading'><h3><b style='text-transform:uppercase;'>" . $table['Azienda'] . "</b></div></h3><br>";

      echo "<div class='panel-body'>";
      echo "<h3><label><span class='glyphicon glyphicon-home'></span>&nbsp;&nbsp;" . $table['Comune'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-road'></span>&nbsp;&nbsp;" . $table['Indirizzo'] . "</label><br></h3>";

   echo "<h3><label><span class='glyphicon glyphicon-phone-alt'></span>&nbsp;&nbsp;" . $table['Telefono'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-envelope'></span>&nbsp;&nbsp;" . $table['Email'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-globe'></span>&nbsp;&nbsp;<a href='" . $table['Web'] . "'>". $table['Web'] . "</a></label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-list-alt'></span>&nbsp;&nbsp;" . $table['Note'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-ok-circle'></span>&nbsp;&nbsp;" . $table['ClasseAccettata'] . "</label><br></h3>";
   //echo "<span class='glyphicon glyphicon-print'><input type='submit' value='PRENOTA' name='$i'  class='btn btn-success' style='float: right;'></span>";
      echo "<hr>";
      echo "<button data-modal-open='some-modal' style='float: right;' type='submit' name='$i' class='btn btn-default btn-lg'>
      <span class='glyphicon glyphicon-open'></span> PRENOTA
    </button>";

 echo  "</div>";
echo"</div>";
}
else
{
echo "<div class='panel panel-warning'>";
echo "<div class='panel-heading'><h3><b style='text-transform:uppercase;'>" . $table['Azienda'] . "</b></div></h3><br>";

      echo "<div class='panel-body'>";
      echo "<h3><label><span class='glyphicon glyphicon-home'></span>&nbsp;&nbsp;" . $table['Comune'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-road'></span>&nbsp;&nbsp;" . $table['Indirizzo'] . "</label><br></h3>";

   echo "<h3><label><span class='glyphicon glyphicon-phone-alt'></span>&nbsp;&nbsp;" . $table['Telefono'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-envelope'></span>&nbsp;&nbsp;" . $table['Email'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-globe'></span>&nbsp;&nbsp;<a href='" . $table['Web'] . "'>". $table['Web'] . "</a></label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-list-alt'></span>&nbsp;&nbsp;" . $table['Note'] . "</label><br></h3>";
   echo "<h3><label><span class='glyphicon glyphicon-ok-circle'></span>&nbsp;&nbsp;" . $table['ClasseAccettata'] . "</label><br></h3>";
   //echo "<span class='glyphicon glyphicon-print'><input type='submit' value='PRENOTA' name='$i'  class='btn btn-success' style='float: right;'></span>";
      echo "<hr>";
      echo "<button data-modal-open='some-modal' style='float: right;' type='submit' name='$i' class='btn btn-default btn-lg'>
      <span class='glyphicon glyphicon-open'></span> PRENOTA
    </button>";

 echo  "</div>";
echo"</div>";
}
$i++;
}
echo "</center>";
echo "</div>";
echo "</div>";
echo  "</form>";


$query2 = mysqli_query($link, "SELECT MIN(ID) AS idMin FROM aziende") or die(mysqli_error($link)); 
$idMin = mysqli_fetch_array($query2) ;



  for($x=$idMin['idMin'];$x<2000;$x++){
        
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