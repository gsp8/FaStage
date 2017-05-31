<?php
session_start();
 
 if(isset($_SESSION['user']))
     {}
 else
 {
    echo "<h2>Effettua il login per visualizzare questa pagina!</h2>";
    exit();
 }
