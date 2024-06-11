<?php

include("database.php");
//echo "<h1>DESDE AGREGAR.php</h1>";
/*echo $_POST["archivistica"];*/
if(isset($_POST["archivistica"])){
    $task_archivistica = $_POST["archivistica"];
    $task_empresa = $_POST["empresa"];
    $task_direccion = $_POST["direccion"];
    $task_longitud = $_POST["longitud"];
    $task_latitud = $_POST["latitud"];
    $task_s_delegacion = $_POST["s_delegacion"];
    $task_s_municipio = $_POST["s_municipio"];
    $task_s_denuncia = $_POST["s_denuncia"];
    $task_fechaorden = $_POST["fechaorden"];

    $query = "INSERT into denuncias2 (archivistica, empresa, direccion, latitud, longitud, delegacion, municipio, denuncia, fechaorden) 
    VALUES ('$task_archivistica', '$task_empresa','$task_direccion', '$task_latitud','$task_longitud','$task_s_delegacion','$task_s_municipio','$task_s_denuncia','$task_fechaorden')";
    $result = mysqli_query($connecction, $query);

    if(!$result) {
        die("Hubo un error en la consulta". mysqli_error($connecction));
    }
    echo "tarea agregada";
    
}