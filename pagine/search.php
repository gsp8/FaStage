<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
</html>
<?php

require "../connect.php";
require "admin/menuAdmin.php";
if(isset($_POST['search'])) {
    


$query1 = "SELECT *
FROM aziende a
WHERE (a.Azienda like '%".$_POST['h']."%') OR (a.Comune like '%".$_POST['h']."%') OR (a.Indirizzo like '%".$_POST['h']."%') OR (a.Telefono like '%".$_POST['h']."%') OR (a.Email like '%".$_POST['h']."%') OR (a.Web like '%".$_POST['h']."%') OR (a.Note like '%".$_POST['h']."%') OR (a.ClasseAccettata like '%".$_POST['h']."%')";


$risp1 = mysqli_query($link, $query1) or die (mysqli_error($link));

$i=0;
while(($table = mysqli_fetch_array($risp1)))
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
echo "<button value='BACK' class='btn btn-default'><a href='javascript:history.go(-1)'>Go Back</a></button>";
}
?>