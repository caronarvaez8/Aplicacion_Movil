<?php
  require_once("./conexion.php");

  $consulta = conectarModelo::conexion()->query("SELECT car_marP FROM perrosP");
  
  $arr = array();
  
  while ($carro = $consulta->fetch(PDO::FETCH_ASSOC))
    array_push($arr, $carro['car_marP']);

  echo json_encode(array_values(array_unique($arr)));
?>