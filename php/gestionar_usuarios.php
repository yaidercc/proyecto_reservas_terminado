<?php
include "conexion.php";
switch ($_GET['case']) {
    case 'agregar':
        $Registrar_usuario = mysqli_query($conexion, "CALL agregar_usuario($_POST[cedula],upper('$_POST[nombres]'),upper('$_POST[apellidos]'),$_POST[cargo])");
        if ($Registrar_usuario) {
            echo json_encode(array("validacion" => true));
        } else {
            echo json_encode(array("validacion" => false));
        }
        break;
    case 'eliminar':
        $eliminar_usuario = mysqli_query($conexion, "CALL eliminar_usuario($_GET[id])");

        break;

    case 'modificar':
        $modificar_usuario = mysqli_query($conexion, "CALL actualizar_usuario($_POST[cedula],upper('$_POST[nombres]'),upper('$_POST[apellidos]'),upper('$_POST[cargo]'),$_POST[id_val])");
        if ($modificar_usuario) {
            echo json_encode(array("validacion" => true));
        } else {
            echo json_encode(array("validacion" => false));
        }
        break;
    case 'cargos':
        $cargosDelusuario = mysqli_query($conexion, "SELECT c.ID,c.NOMBRE_CARGO FROM cargos c INNER JOIN empleados e ON e.id_cargo_fk=c.ID WHERE e.id=$_GET[id]");
        $cargo = mysqli_fetch_assoc($cargosDelusuario);
        $select = '<option value='. $cargo["ID"] .'>' . $cargo["NOMBRE_CARGO"] . '</option>';
        $cargos = mysqli_query($conexion, "SELECT * FROM cargos ORDER BY NOMBRE_CARGO ASC");
        while ($fila = mysqli_fetch_assoc($cargos)) {
            if ($fila['ID'] != $cargo['ID']) {
                $select .= '<option value='. $fila["ID"] . '>' . $fila["NOMBRE_CARGO"] . '</option>';
            }
        }
        echo json_encode(array("validacion"=>true,"select" => $select));


        break;
    default:
        echo '';
}
