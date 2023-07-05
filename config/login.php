<?php
require_once('valid.php');
    class Admin extends mysqli{
        public function __construct($host,$usuario,$pass,$bd){
            parent::__construct($host,$usuario,$pass,$bd);
        }
        
        public function validation($correo, $pass){
            $consulta = "SELECT correo, pass, rol FROM usuarios WHERE correo='$correo' AND pass='$pass' AND statuss='1' AND rol='1'";
            $query = $this->query($consulta);
            return $query;
        }
    }
?>