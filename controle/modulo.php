<?php
class Modulo
{
    /*nome do banco*/
    private static $dbname = 'academia';
    /*caminho do servidor*/
    private static $host = 'localhost';
    /*usuario do banco*/
    private static $user = 'root';
    /*senha do banco*/
    private static $pass = '';
    /*contador*/
    private static $cont = null;
    /*função que constroi a classe conexão*/
    public function __construct()
    {
        die('A função Init não é permitida!');
    }
    /*função responsável por conectar-se a base de dados*/
    public static function conectar()
    {
        if (null == self::$cont) {
            /*o que está no try é o que precisa funcionar*/
            try {
                self::$cont = new PDO("mysql:host=" . self::$host . ";dbname=" . self::$dbname, self::$user, self::$pass);
            }
            /*o que está no catch é o que falhou no try*/ catch (Exception $ex) {
                die($ex->getMessage());
            }
        }
        return self::$cont;
    }

    public static function desconectar()
    {
        self::$cont = null;
    }
}
