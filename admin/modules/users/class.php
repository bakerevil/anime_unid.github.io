<?php
    class modules extends mysqli{
        public function __construct($host,$usuario,$pass,$bd){
            parent::__construct($host,$usuario,$pass,$bd);
        }

        public function get_data(){
            $consulta = "SELECT u.id, u.correo, u.pass, rr.n_rol, rs.nombre, u.usuario FROM usuarios u INNER JOIN rel_status  rs ON u.statuss = rs.id INNER JOIN rel_roles rr ON u.rol = rr.id";
            $result = mysqli:: query($consulta);
            $array=[];
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $array[]=[
                    //"id"=> $row["id"],
                    "correo"=> $row["correo"],
                    "password"=> $row["pass"],
                    "usuario"=> $row["usuario"],
                    "rol"=> $row["n_rol"],
                    "status"=> $row["nombre"]
                ];
            }
            echo json_encode($array);
        }
        
        public function insert_data(){
            mysqli_report(MYSQLI_REPORT_OFF);
            $usuario= $_POST['usuario'];
            $correo= $_POST['correo'];
            $pass= $_POST['password'];
            $rol= $_POST['rol'];
            $statuss= $_POST['status'];

                $consulta = "INSERT INTO usuarios (usuario, pass, rol, statuss, correo) VALUE ('$usuario', '$pass', '$rol', '$statuss','$correo')";
                $array = [
                    "status" => "success",
                    "text" => "se inserto correctamente"
                ];
                if(!mysqli::query($consulta)){
                $array = [
                    "status" => "error",
                    "text" => "no se pudo insertar el registro"
                ];
                }
            

            echo json_encode($array);
        }
    }
    
    $modules = new modules("localhost", "root", "", "anime_rocket");
    if(isset($_POST)){
        switch ($_POST["funcion"]) {
            case 'get_data':
                $modules->get_data();
                break;
            case 'insert_data':
                $modules->insert_data();
                break;
            default:
                echo "funcion incompleta";
                break;
        }
    }
?>