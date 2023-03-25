<?php
    echo "Fikri Maulana - 1301200239"
    for($i = 1; $i <= 10; $i+=2){
        echo "Ini perulangan for ke - " . $i . "<br>";
    }
    $i = 1;
    while($i <= 5){
        echo "Ini perulangan while ke - " . $i . "<br>";
        $i += 1;
    }
    $i = 1;
    do{
        echo "Ini perulangan do - while ke - " . $i . "<br>";
        $i += 3;
    } while ($i < 10);
?>