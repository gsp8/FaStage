
<?php
if (file_exists("../../connect.php") == 1){
    
    require '../../connect.php';
    require '../../script/staySession.php';
}
else {
    require '../connect.php';
    require '../script/staySession.php';
}

$query3=mysqli_query($link,"SELECT COUNT(*) AS prenotazioni FROM prenotazioni WHERE Conferma='0'");
$result= mysqli_fetch_array($query3);
$prenotazioni=$result['prenotazioni'];

$user = $_SESSION['user'];
$query1 = mysqli_query($link, "SELECT Privilegi FROM utenti WHERE Email= '$user'" ) or die(mysqli_error($link));
$privilegio = mysqli_fetch_array($query1);

if ($privilegio['Privilegi'] == 1) {
    ?>
<style>
    
    html{
        font-family: 'Palatino Linotype', 'Palatino', 'URW Palladio L';
    }
    </style>
    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">FaStage</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="../home.php">Home</a></li>
                <li><a href="/FaStage/pagine/admin/eliminaAzienda.php">Elimina azienda</a></li>
                <li><a href="/FaStage/pagine/admin/prenotazioni/">Prenotazioni <span class="badge"><?php echo $prenotazioni;?></span></a></li>                <li><a href="/FaStage/pagine/admin/modifica.php">Modifica azienda</a></li>
                <li><a href="/FaStage/pagine/logout.php">Logout</a></li>
                <li><a href="/FaStage/pagine/admin/registraAzienda.php">Inserisci azienda</a></li>
                <li><a href="/FaStage/info.php">Info</a></li>
                <li><form class="navbar-form" role="search" action="/FaStage/pagine/search.php" method="POST">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search..." name="h">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default" name="search">
                                        <span class="glyphicon glyphicon-search">
                                            <span class="sr-only">Search...</span>
                                        </span>
                                    </button>
                                </span>
                            </div>
                        </form></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">

                <li style="float:right;"><a><?php 
    echo $_SESSION['user'];
    ?></a></li>
            </ul>
        </div>
    </nav>
    <?php
} else {
    $myprof=$_SESSION['user'];
$query4=mysqli_query($link,"SELECT COUNT(*) AS notifiche FROM prenotazioni WHERE Conferma='1' AND Email='$myprof'");
$result1= mysqli_fetch_array($query4);
$notifiche=$result1['notifiche'];
    
    ?>
    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">FaStage</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="../home.php">Home</a></li>
                
                <li><a href="/FaStage/info.php">Info</a></li>
                <li><a href="logout.php">Logout</a></li>
                <li><a href="/FaStage/pagine/notifiche/">Notifiche <span class="badge"><?php echo $notifiche;?></span></a></li>
                <li><form class="navbar-form" role="search" action="/FaStage/pagine/search.php" method="POST">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search..." name="h">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default" name="search">
                                        <span class="glyphicon glyphicon-search">
                                            <span class="sr-only">Search...</span>
                                        </span>
                                    </button>
                                </span>
                            </div>
                        </form></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">

                <li style="float:right;"><a><?php 
    echo $_SESSION['user']; ?></a></li>
            </ul>
        </div>
    </nav>
<?php } ?>




