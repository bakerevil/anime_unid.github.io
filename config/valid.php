<?php
    $validation= new Admin("localhost","root","","anime_rocket");
    $result = $validation->validation($_POST['correo'], $_POST['pass']);
            if (mysqli_num_rows($result) > 0) {
                session_start();
                header("location: ../admin/modules/users/bien.php");
            } else {
                header("location: ../admin/index.php");
            }
?>