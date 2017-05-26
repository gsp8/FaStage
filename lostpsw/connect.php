<?php

$link = mysqli_connect('localhost', 'root', '', 'my_fastage');
if (!$link) {
	die ('Non riesco a connettermi: ' . mysql_error());
}

?>