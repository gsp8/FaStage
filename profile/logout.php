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
    </head>
    <body>
        <h1>Hai effettuato il logout</h1>
        <?php
        session_start();
        session_destroy();
        echo "<script type='text/javascript'>";
echo "function redirect() {";
echo "location.href = '../index.php';";
echo "}";
echo "window.setTimeout('redirect()', 1500);";
echo "</script>";
        ?>
    </body>
</html>
