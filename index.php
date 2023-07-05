<!DOCTYPE html>
<html lang="es-MX">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
  <title>🚀 AnimeRocket</title>
</head>

<body>
  <header>
    <div class="header">
      <div class="logo">🚀 AnimeRocket</div>
      <nav>
        <ul>
          <li><a href="index.php">Inicio</a></li>
          <li><a href="browser.php">Directorio Anime</a></li>
        </ul>
        <div id="search">
          <form action="index.php" method="POST">
            <input type="text" placeholder="Buscar..." name="texto">
            <input type="submit" name="search" value="🔍">
          </form>
        </div>
        <a href="admin/index.php" class="login">✔ Login</a>
      </nav>
    </div>
  </header>
  <section id="main">
    <h2>Últimos episodios</h2>
    <div class="episodes">  
      <?php
      require_once 'config/videos.php';
      $videos= new video("localhost","root","","anime_rocket");
        if (isset($_POST['search'])) {
          $result = $videos->search($_POST['texto']);
        } else {
          $result = $videos ->get_videos();
        }
        while ($row = $result-> fetch_array()) {        
      ?>
        <div class="episode">
          <p class="icon">►</p>
          <img src="<?php echo $row['thumbnail'] ?>" alt="">
          <div class="episode_description">
            <p class="episode_number">Episodio <?php echo $row['orden'];?></p>
            <h3 class="episode_title"><?php echo $row['titulo']  ?></h3>
          </div>
        </div>
        <?php
          }
        ?>
    </div>
  </section>
  <section id="main">
    <h2>Últimos Animes</h2>
    <div class="episodes">  
      <?php
      require_once 'config/listas.php';
      $listasOjb= new listas("localhost","root","","anime_rocket");
        if (isset($_POST['search'])) {
          $result2 = $listasOjb->search($_POST['texto']);
        } else {
          $result2 = $listasOjb ->get_listas();
        }
        while ($row2 = $result2-> fetch_assoc()) {        
      ?>
        <div class="episode">
          <p class="icon">►</p>
          <img src="<?php echo $row2['thumbnail'] ?>" alt="">
          <div class="episode_description">
            <p class="episode_number"><?php echo $row2['sipnosis'];?></p>
            <h3 class="episode_title"><?php echo $row2['nombre']  ?></h3>
          </div>
        </div>
        <?php
          }
        ?>
    </div>
  </section>
</body>

</html>