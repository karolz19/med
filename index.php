<?php 

$db = new mysqli("localhost", "root", "", "med");
$q = $db->prepare("SELECT * FROM staff");
if($q->execute()) {

    $result = $q->get_result();
    while($row = $result->fetch_assoc()) {
        echo $row['firstName'];
    }

} else {
    die("zjebałeś kod");
}

?>