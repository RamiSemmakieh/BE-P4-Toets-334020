<?php

class ExamenModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getExamen()
    {
        $sql = "SELECT ET.voornaam, ET.tussenvoegsel, ET.Achternaam, E.Datum, E.Rijbewijscategorie, E.Rijschool, E.Stad, E.Uitslag from Examen E 
        inner join ExamenPerExaminator exp ON exp.ExamenId=E.Id
        inner join Examinator ET ON exp.ExaminatorId=ET.Id;";

        $this->db->query($sql);
        return $this->db->resultSet();
    }

}