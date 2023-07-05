<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <aside>
        <div class="logo">
            <img src="https://picsum.photos/50" alt="">
            <h1>anime rocket admin</h1>
        </div>
        <div class="menu">
            <ul>
                <a href="#"><i class="fa-solid fa-list"></i> listas</a>
            </ul>
            <ul>
                <a href="#"><i class="fas fa-video"></i> videos</a>
            </ul>
            <ul>
                <a href="#"><i class="fa-solid fa-user"></i> usuarios</a>
            </ul>
        </div>
    </aside>
    <main>
        <i class="fa-sharp fa-solid fa-chevron-left"></i>
        <div class="header">
            <h2>usuarios</h2>
            <div class=actions> 
                <a href="#" class="btnaction"id="btnNew"><i class="fa-solid fa-plus"></i> nuevo</a>
                <a href="#" class="btnaction"><i class="fa-solid fa-plus"></i> borrar</a>
            </div>
        </div>
        <section id="data">
            <table>
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" id="SelectAll">
                        </th>
                        <th> correo</th>
                        <th> contraseña</th>
                        <th> nombre</th>
                        <th> rol</th>
                        <th> status</th>
                    </tr>
                </thead>
                <tbody id="cuerpo">
                    
                    </tbody>
                </table>
            </section>
        <section id="insert_data">
            <div class="container">
                <form action="class.php" method="POST" id="form">
                    <div class="row mt-5">
                        <div class="col-6 ">
                            <label for="correo" class="form-label">Correo</label>
                            <input type="email" class="form-control" name="correo" id="correo">
                        </div>
                        <div class="col-6">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" name="password" id="password">
                        </div>
                        <div class="col-6">
                            <label for="rol" class="form-label">Rol</label>
                            <input type="text" class="form-control" name="rol" id="rol">
                        </div>
                        <div class="col-6">
                            <label for="status" class="form-label">Status</label>
                            <input type="text" class="form-control" name="status" id="status">
                        </div>
                        <div class="col-12 mb-3">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control" name="usuario" id="usuario" required>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-success" id="btnSave">Guardar</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        </main>
    <script src="../../js/index.js"></script>
</body>
</html>