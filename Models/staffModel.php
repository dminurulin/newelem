<?php

class staffModel {

    public function getStaffList() {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT * FROM ne_staff ORDER BY name ASC");
        $th->execute();
        $data = $th->fetchAll(PDO::FETCH_ASSOC);
        
        return $data;
    }
    public function getStaffById($id) {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT * FROM ne_staff WHERE id = :id");
        $th->execute(array ('id' => "$id")  );
        $data = $th->fetch(PDO::FETCH_ASSOC);
        
        return $data;
    }

  
}

?>