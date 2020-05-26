<?php
  require_once("./conexion.php");

  $consulta = conectarModelo::conexion()->query("SELECT car_tipP FROM perrosP");
  
  $arr = array();
  
  while ($carro = $consulta->fetch(PDO::FETCH_ASSOC))
    array_push($arr, $carro['car_tipP']);

  echo json_encode(array_values(array_unique($arr)));
?>