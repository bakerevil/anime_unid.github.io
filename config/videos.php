<?php    
    class Video extends mysqli{

        public function __construct($host,$usuario,$pass,$bd){
            parent::__construct($host,$usuario,$pass,$bd);
        }
        
        public function get_videos(){
            $consulta = "SELECT * FROM video";
            $query = $this->query($consulta);
            return $query;
        }
        public function search($texto){
            $consulta = "SELECT * FROM video WHERE titulo like '%$texto%'";
            $query = $this->query($consulta);
            return $query; 
        }
    }
?>