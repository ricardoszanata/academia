<?php
$nome = $_GET["nome"];
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>GERÊNCIA - ACADEMIA MASSARANDUBA</title>
</head>

<body>
    <header>
        <?php
        include 'germenu.php';
        ?>
    </header>
    <main id="gerconteudo">
        <?php
        echo $nome;
        ?>
    </main>

    <!-- JavaScript (Opcional) -->

    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>