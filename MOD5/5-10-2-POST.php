<?php
    echo "Fikri Maulana - 1301200239";
?>
<form method = "POST">
    <p>username : <input type="text" name="user" placeholder="username"></p>
    <p>username : <input type="password" name="pass" placeholder="password"></p>
    <p><input type="submit" name="kirim"></p>
    <pre>
        <?php print_r($_POST) ?>
    </pre>  
</form>
