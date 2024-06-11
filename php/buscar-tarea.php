<?php

include("database.php");
//echo "laterea se busco correctamente";


 $search = $_POST["search"];

if(!empty($search)) {
    $query = "SELECT * FROM inspecciones_temp WHERE archivistica LIKE '$search%'";
    $result = mysqli_query($connecction, $query);

    if(!$result) {
        die("Hubo un error en la consulta". mysqli_error($connecction));
    }

    $json = array();

    while($row = mysqli_fetch_array($result)){
        $json[] = array(
            "idinspecciontemp"=>$row["idinspecciontemp"],
            
            "archivistica"=>$row["archivistica"],
            "empresa"=>$row["empresa"],
            "direccion"=>$row["direccion"],
            "latitud"=>$row["latitud"],
            "longitud"=>$row["longitud"],
            "delegacion"=>$row["delegacion"],
            "municipio"=>$row["municipio"],
            "denuncia"=>$row["denuncia"],
            "fecha"=>$row["fecha"]
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
} //print_r($json);
?>