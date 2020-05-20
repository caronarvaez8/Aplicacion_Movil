<?php
  require_once("./conexion.php");
  
  $arr = array('status' => NULL, 'usuarioP' => NULL);
  
  $correo = strtolower($_POST['correoP']);
  $contra = $_POST['contraP'];

  $consulta = conectarModelo::conexion()->query("SELECT * FROM usuariosP");

  while ($usuario = $consulta->fetch(PDO::FETCH_ASSOC))
    if(strtolower($usuario['usu_corP']) == $correo && $usuario['usu_pasP'] == $contra){
      $arr['status'] = true;
      $arr['usuarioP'] = $usuario;
      echo json_encode($arr);
      return;
    }
  
  $arr['status'] = false;
  echo json_encode($arr);
?>