<?php

class mainMenu {

    public function getMainMenuList() {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT * FROM ne_mainmenu ORDER BY ord ASC");
        $th->execute();
        $data = $th->fetchAll(PDO::FETCH_ASSOC);
        
        return $data;
    }
   public function getNameByAlias($alias) {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT name FROM ne_mainmenu WHERE alias= :alias");
        $th->execute(array('alias' => "$alias"));
        $data = $th->fetch(PDO::FETCH_ASSOC);
        
        return $data['name'];
    }

  
}

?>