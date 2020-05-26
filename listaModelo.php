<?php
  require_once('./conexion.php');
  
  $arr = array();

  $consulta = conectarModelo::conexion()->query('SELECT car_modP FROM perroP');

  while ($carro = $consulta->fetch(PDO::FETCH_ASSOC))
    array_push($arr, $carro['car_modP']);

  echo json_encode(array_unique($arr));
?>