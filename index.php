<?php 

$db = new mysqli("localhost", "root", "", "med");
$q = $db->prepare("SELECT * FROM staff");
if($q && $q->execute()) {

    $result = $q->get_result();
    while($staff = $result->fetch_assoc()) {
        $staffId = $staff['id'];
        $firstName = $staff['firstName'];
        $lastName = $staff['lastName'];
        echo "lekarz $firstName $lastName<br>";
        $q = $db->prepare("SELECT * FROM appointment WHERE staff_id = ?");
        $q->bind_param("i", $staffId);
        if($q && $q->execute()) {
            $appointments = $q->get_result();
            while($appointment = $appointments->fetch_assoc()) {
                $appointmentId = $appointment['id'];
                $appointmentDate = $appointment['date'];
                $appointmentTimestamp = strtotime($appointmentDate);
                echo"<a href=\"patientlogin.php?id=$appointmentId\" style=\"margin=10px; display:block\">";
                echo date("j.m H:i", $appointmentTimestamp);
                echo"</a>";
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