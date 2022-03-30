<?php
$appointmentId = $_REQUEST['id'];


?>

<div style="display:flex">
    <div style="flex-grow: 1;">
        <h1>Zaloguj</h1>
        <form action="appointment.php" method="POST">
            <label for="pesel">Pesel:</label>
            <input type="text" name="pesel" id="phone">
            <label for="phone">Numer telefonu:</label>
            <input type="text" name="phone" id="phone">
            <input type="hidden" name="appointmentID" value="<?php echo $appontmentId; ?>">
            <input type="submit" value="Zaloguj się">
        </form>
    </div>
    <div style="flex-grow: 1;">
        <h1>Zarejestruj</h1>
        <form action="appointment.php" method="POST">
            <label for="firstName"
            <label for="pesel">Pesel:</label>
            <input type="text" name="pesel" id="phone">
            <label for="phone">Numer telefonu:</label>
            <input type="text" name="phone" id="phone">
            <input type="hidden" name="appointmentID" value="<?php echo $appontmentId; ?>">
            <input type="submit" value="Zaloguj się">
        </form>
    </div>
</div>