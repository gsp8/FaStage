<?php
session_start();
 
 if($_SESSION['user']==NULL)
 {
    echo "<h2>Effettua il login per visualizzare questa pagina!</h2>";
    exit();
 }
