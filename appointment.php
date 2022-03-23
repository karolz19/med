<?php 

$db = new mysqli("localhost", "root", "", "med");
$appointmentId = $_REQUEST['id'];
$q = $db->prepare("SELECT * FROM appointment WHERE id = ?");
$q->bind_param("i", $appointmentId);
if($q && $q)->execute()) {
    $appointment = $q->get_result()->fetch_assoc();
    $appointmentDate = $appointment['date'];
    $appointmentTimestamp = strtotime($appointmentDate);
    echo "zapis na wizyte w terminie".date("j.m H:i", $appointmentTimestamp);

} 
if(isset($_REQUEST['firstName']) && isset($_REQUEST['lastName'])
&& $_REQUEST['phone']) {
    
}

?>

<form action="appointment.php">
Imię: <input type="text" name="firstName">
Nazwisko: <input type="text" name="lastName">
Telefon: <input type="text" name="phone">
<input type="hidden" value="<?php echo $appointmentId ?>" name="id">
<input type="submit" value="Zapisz wizytę">
</form>
