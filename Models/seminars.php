<?php

class seminars {

    public function getSeminarsList() {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare('SELECT ne_seminars.name as name,
                 ne_seminars.date as date,
                 ne_staff.name as author
                 FROM ne_seminars 
                 INNER JOIN ne_staff 
                 WHERE ne_seminars.staff_id=ne_staff.id');
        $th->execute();
        $data = $th->fetchAll(PDO::FETCH_ASSOC);
        
        return $data;
    }
    public function getSeminarsByDate($date) {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT * FROM ne_seminars WHERE date = :date");
        $th->execute(array('date' => $date));
        $data = $th->fetchAll(PDO::FETCH_ASSOC);
        
        return $data;
    }
    public function getSeminarById($id) {
        $this->db = $db = new Dbase();
        $th = $this->db->prepare("SELECT * FROM ne_seminars WHERE id = :id");
        $th->execute(array ('id' => "$id")  );
        $data = $th->fetch(PDO::FETCH_ASSOC);
        
        return $data;
    }

  
}

?>