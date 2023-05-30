<?php

class Examen extends BaseController
{
    private $ExamenModel;

    public function __construct()
    {
        $this->ExamenModel = $this->model('ExamenModel');
    }

    public function overzichtafgenomenexamen()
    {
        $result = $this->ExamenModel->getExamen();
        $rows = "";
        foreach ($result as $Examen) {
            $rows .= "<tr>
                        <td>$Examen->voornaam $Examen->tussenvoegsel $Examen->Achternaam</td>
                        <td>$Examen->Datum</td>
                        <td>$Examen->Rijbewijscategorie</td>
                        <td>$Examen->Rijschool</td>
                        <td>$Examen->Stad</td>            
                        <td>$Examen->Uitslag</td>                       
                      </tr>";
        }
        
        $data = [
            'title' => 'Overzicht Afgenomen Eamens Examinatoren',
            'rows' => $rows
        ];

        $this->view('Examen/overzichtafgenomenexamen', $data);
    }
}