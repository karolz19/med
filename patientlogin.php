<?php
$appointmentId = $_REQUEST['id'];


?>

<div style="display:flex">
    <div style="flex-grow: 1;">
        <h1>Zaloguj</h1>
        <form action="appointment.php" method="POST">
            <label for="pesel">Pesel:</label><br>
            <input type="text" name="pesel" id="phone"><br>
            <label for="phone">Numer telefonu:</label><br>
            <input type="text" name="phone" id="phone"><br>
            <input type="hidden" name="appointmentID" value="<?php echo $appointmentId; ?>">
            <input type="submit" value="Zaloguj się">
        </form>
    </div>
    <div style="flex-grow: 1;">
        <h1>Zarejestruj</h1>
        <form action="appointment.php" method="POST">
            <label for="firstName">Imię:</label><br>
            <input type="text" name="firstName" id="firstName"><br>
            <label for="lastName">Nazwisko:</label><br>
            <input type="text" name="lastName" id="lastName"><br>
            <label for="pesel">Pesel:</label><br>
            <input type="text" name="pesel" id="phone"><br>
            <label for="phone">Numer telefonu:</label><br>
            <input type="text" name="phone" id="phone"><br>
            <input type="hidden" name="appointmentID" value="<?php echo $appointmentId; ?>">
            <input type="submit" value="Zaloguj się">
        </form>
    </div>
</div>