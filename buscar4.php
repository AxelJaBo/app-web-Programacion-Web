<?php
    $ISC = 'ISC';
    
    //172.25.2.2
	$conn = new mysqli("localhost", "root", "", "biblioteca");
      if($conn->connect_error){
        die("Conexión fallida: ".$conn->connect_error);
      }

        $salida = "";
         $query = "SELECT cod_libs, nom_lib, autor, anio, ejemplar, estado, carrera, estante, volumen, color FROM libros WHERE carrera = '$ISC' ORDER BY IDL";
        if (isset($_POST['consulta'])) {
        $q = $conn->real_escape_string($_POST['consulta']);
        $query = "SELECT cod_libs, nom_lib, autor, anio, ejemplar, estado, carrera, estante, volumen, color FROM libros WHERE carrera='$ISC' AND (cod_libs LIKE '%".$q."%' OR nom_lib LIKE '%".$q."%' OR autor LIKE '%".$q."%' OR anio LIKE '%".$q."%' OR ejemplar LIKE '%".$q."%' OR estado LIKE '%".$q."%' OR estante LIKE '%".$q."%' OR volumen LIKE '%".$q."%' OR color LIKE '%".$q."%')";
        }
        $resultado = $conn->query($query);
       
    if ($resultado->num_rows>0) {
    	$salida.="<table border=1 class='tabla_datos'>
    			<thead>
    				<tr id='titulo'>
                        <td>Código del Libro</td>
                        <td>Nombre del Libro</td>
                        <td>Autor</td>
                        <td>Año</td>
                        <td>Número de Ejemplar</td>
                        <td>Estado</td>
                        <td>Carrera</td>
                        <td>Estante</td>
                        <td>Volumen</td>
                        <td>Color</td>
    				</tr>
    			</thead>
    	<tbody>";

    	while ($fila = $resultado->fetch_assoc()) {
    		$salida.="<tr>
                        <td>".$fila['cod_libs']."</td>
                        <td>".$fila['nom_lib']."</td>
                        <td>".$fila['autor']."</td>
                        <td>".$fila['anio']."</td>
                        <td>".$fila['ejemplar']."</td>
                        <td>".$fila['estado']."</td>
                        <td>".$fila['carrera']."</td>
                        <td>".$fila['estante']."</td>
                        <td>".$fila['volumen']."</td>
                        <td>".$fila['color']."</td>
    				</tr>";
    	}
    	$salida.="</tbody></table>";
    }else{
    	$salida.="NO HAY DATOS :(";
    }
    echo $salida;
    $conn->close();
?>