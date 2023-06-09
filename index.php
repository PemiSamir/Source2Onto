<?php
    include 'functions/main-function.php';

    $pages=scandir('pages/');
   

    if(isset($_GET['page']) && !empty($_GET['page']) && in_array($_GET['page'].'.php',$pages)){
        $page=$_GET['page'];
    }
    else {
        $page='home';
    }

    $pages_functions=scandir('functions/');

    if(in_array($page.'.funct.php',$pages_functions)){
        include 'functions/'.$page.'.func.php';
    }

?>


<!Doctype <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>ource2onto</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon1.ico" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">


  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link rel = "stylesheet" href = "fontawesome/css/all.css">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

</head>
<body id="page-top">
    <?php
        include 'body/topbar.php';

        include 'pages/'.$page.'.php';

        include 'body/footer.php';
    ?>
    

   <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/popper/popper.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/counterup/jquery.waypoints.min.js"></script>
  <script src="lib/counterup/jquery.counterup.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/typed/typed.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>  

    <?php
        $pages_js = scandir('js/');
        if(in_array($page.'.func.js',$pages_js)){
            ?>
                <script src="js/<?= $page ?>.func.js"></script>
            <?php
        }
    ?>

</body>
</html>