<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/estilo.css">
    <title>Document</title>
</head>
    <body class="text-center">
        <main class="form-signin w-100 m-auto">
            <form action="../config/login.php" method="POST">
                <h1 class="h3 mb-3 fw-normal">por favor, inicia sesion</h1>
                <div class="form-floating">
                    <input value="" type="email" class="form-control" id="floatingInput" name="correo">
                    <label for="floatingInput">correo electronico</label>
                </div>
                <div class="form-floating">
                    <input value="" type="password" class="form-control" id="floatingPassword" name="pass">
                    <label for="floatingPassword">contraseña</label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">inicio de sesion</button>
                <a href="#">recuperar contraseña</a>
                </div>
            </form>
        </main>    
    </body>
</html>