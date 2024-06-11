<?php

include("database.php");

$query = "SELECT * FROM denuncias2 where archivistica = 1234567890";
$result = mysqli_query($connecction, $query);

if(!$result) {
    die("Hubo un error en la consulta". mysqli_error($connecction));
}

$json = array();

    while($row = mysqli_fetch_array($result)){
        $json[] = array(
            "iddenuncia"=>$row["iddenuncia"],
            "archivistica"=>$row["archivistica"],
            "empresa"=>$row["empresa"],
            "direccion"=>$row["direccion"],
            "latitud"=>$row["latitud"],
            "longitud"=>$row["longitud"],
            "delegacion"=>$row["delegacion"],
            "municipio"=>$row["municipio"],
            "denuncia"=>$row["denuncia"],
            "fecha"=>$row["fechaorden"]
        );
    }


$jsonstring = json_encode($json);
echo $jsonstring;

