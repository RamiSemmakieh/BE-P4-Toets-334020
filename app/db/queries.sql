
    select ET.voornaam, ET.tussenvoegsel, ET.Achternaam, E.Datum, E.Rijbewijscategorie, E.Rijschool, E.Stad, E.Uitslag from Examen E 
    inner join ExamenPerExaminator exp ON exp.ExamenId=E.Id
    inner join Examinator ET ON exp.ExaminatorId=ET.Id;
