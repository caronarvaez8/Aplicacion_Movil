<?php
	require_once("./conexion.php");
	
	$arr = array('status' => false, 'problem' => NULL);
	$bandera = false;

	$correo = $_POST['correoP'];
	$nombre = $_POST['nombreP'];
	$apellido = $_POST['apellidoP'];
	$telefono = $_POST['telefonoP'];
	$direccion = $_POST['direccionP'];
	$contra = $_POST['contraP'];
	$contraV = $_POST['contraVP'];

	if ($correo != "") {
		$consulta = conectarModelo::conexion()->query("SELECT usu_corP FROM usuariosP");

		while ($usuario = $consulta->fetch(PDO::FETCH_ASSOC))
			if ($usuario['usu_corP'] == $correo){
				$bandera = true;
				break;
			}

		if (!$bandera) {
			if (strlen($contra) >= 4 && strlen($contraV) >= 4) {
				if ($contra == $contraV) {
					conectarModelo::conexion()->query("INSERT INTO usuariosP VALUES('$correo', '$nombre', '$apellido', '$telefono', '$direccion', '$contra', NULL)");
					$arr['status'] = true;
				} else $arr['problem'] = "Las contraseñas no son iguales";
			} else $arr['problem'] = "La contrasenia debe tener 4 o mas digitos";
		} else $arr['problem'] = "Este correo ya se encuentra registrado";
	} else $arr['problem'] = "Correo esta vacio";

	echo json_encode($arr);
?>