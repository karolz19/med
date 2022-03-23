<?php 

$db = new mysqli("localhost", "root", "", "med");
$q = $db->prepare("SELECT * FROM staff");
if($q && $q->execute()) {

    $result = $q->get_result();
    while($row = $result->fetch_assoc()) {
        $staffId = $row['id'];
        $firstName = $row['firstName'];
        $lastName = $row['lastName'];
        echo "lekarz $firstName $lastName<br>";
        $q = $db->prepare("SELECT * FROM appointment WHERE staff_id = ?");
        $q->bind_param("i", $staffId);
        if($q && $q->execute()) {
            $appointments = $q->get_result();
            while($appointment = $appointments->fetch_assoc()) {
                $appointmentId = $appointment['id'];
                $appointmentDate = $appointment['date'];
                $appointmentTimestamp = strtotime($appointmentDate);
                echo"<button style=\"margin=10px\">";
                echo date("j.m H:i", $appointmentTimestamp);
                echo"</button>";
            }
echo "<br>";
            

        } else {
            die("zjebałeś kod wizyt");
        }
    }

} else {
    die("zjebałeś kod lekarzy");
}

?>