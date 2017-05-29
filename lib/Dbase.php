<?php

class Dbase extends PDO {


    public function __construct() {
        parent::__construct('mysql:host=localhost;dbname=work', 'root', 'adnnad09');
    }

}

?>