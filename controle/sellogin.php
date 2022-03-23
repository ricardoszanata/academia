<?php
/*require -  obriga a utilização da classe dentro de outra classe*/
require "modulo.php";

/*instanciar nossa classe a um atributo*/
$pdo = Modulo::conectar();
/*retorna os erros pertinentes ao PDO*/
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
/*atributo que recebe uma instrução SQL*/
$sql = "select * from pessoas where pesemail = ? and pespass = MD5(?)";
/*preparo a instrução SQL para receber ou não os parâmetros*/
$prp = $pdo->prepare($sql);
/*executo o comando SQL já com os parâmetros ou não*/
$prp->execute(array($pesemail,$pespass));
/*obrigatório desconectar do banco*/
Modulo::desconectar();
/*propriedade name do objeto - campodetexto Edit1 - edtusuario*/
/*
if(!empty($_POST["usuario"])){
    $user = $_POST["usuario"];
}if(!empty($_POST["senha"])){
    $pass = $_POST["senha"];
}

if (empty($user)) {
    echo 'Usuário não preenchido';
} else if (empty($pass)) {
    echo 'Senha não preenchido';
} else {
    if (($user == "zanata") && ($pass == "1234")) {
        /*echo escreve uma informação na tela assim como o print*/
        /*echo 'Seja Bem Vindo ' . $user;*/
        /*header('Location: suapagina') é responsável por fazer o redirecionamento*/
        /*
        header('Location: gerencia.php?nome=Seja Bem Vindo '.$user);
    } else {
        echo 'Erro de Usuário ou Senha!!!, tente novamente';
    }
}
*/