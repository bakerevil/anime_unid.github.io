<?php
    
    class listas extends mysqli{
        public function __construct($host,$usuario,$pass,$bd){
        parent::__construct($host,$usuario,$pass,$bd);
    }

    public function get_listas(){
        $consulta = "SELECT * FROM listas";
        $query = $this->query($consulta);
        return $query;
    }
    public function search($texto){
        $consulta = "SELECT * FROM listas WHERE nombre like '%$texto%'";
        $query = $this->query($consulta);
        return $query; 
    }
}
?>