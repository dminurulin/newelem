<?php

class Pages {

    public function LoadStaticPage($alias) {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT * FROM ne_pages WHERE alias = :ali ;");
        $th->execute(array(
            ':ali' => $alias
        ));
        $data = $th->fetch(PDO::FETCH_ASSOC);
        $src = $data['src'];
        #return "Index :: $src";
        $nm = $data['name'];
        $alias = $data['alias'];
        return array ('name' => "$nm", 'src' => "$src", 'alias' => "$alias");
    }

    public function getChildrens($alias) {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT id FROM ne_pages WHERE alias = :ali ;");
        $th->execute(array(
            ':ali' => $alias
        ));
        $data = $th->fetch(PDO::FETCH_ASSOC);
        $pageId = $data['id'];
        
        $th = $this->db->prepare("SELECT name, alias FROM ne_pages WHERE parent_id = :aid ;");
        $th->execute(array(
            ':aid' => $pageId
        ));       
        $list = $th->fetchAll(PDO::FETCH_ASSOC); 
        # $list = array ('id' => $pageId, 'alias' => $alias); 
        return $list;
    }
    public function hello($name) {
        return ", {$name}!";
    }

}

?>