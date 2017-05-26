<html>
    <head>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
</html>
<?php

require '../../connect.php';

$j=0;
for($i=0;$i<500;$i++)
{
    if(isset($_POST[$i]))
    {
        $j++;
        $query1 = "Select Azienda from aziende WHERE ID='$i'";
        $risp1 = mysqli_query($link, $query1) or die (mysqli_error($link));
        $Nome = mysqli_fetch_array($risp1);
        
        $query = "DELETE FROM aziende WHERE ID='$i'";
        $risp = mysqli_query($link, $query) or die (mysqli_error($link));
        
        
        
        echo "<div class='alert alert-success'><b>Azienda ". $Nome['Azienda'] . " eliminata</b> con successo </div>";
        //header("location:../home.php");
        
    }
    
}

if ($j==0){
    echo "<div class='alert alert-success'><b>Non hai selezionato nessuna Azienda</div>";
}
