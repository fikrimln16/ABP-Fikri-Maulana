<?php
	echo "Fikri Maulana - 1301200239";
    function cetak_ganjil(){
        for($i = 1; $i <= 10; $i++){
            if($i % 2 == 0){
                echo $i . " adalah bilangan genap <br>";
            }
        }
    }
    function cek_ganjil_atau_genap($a){
        if($a % 2 == 1){
            echo "<br><br>" . $a . " adalah bilangan ganjil";
        }else{
            echo "<br><br>" . $a . " adalah bilangan genap";
        }
    }
    cetak_ganjil();
    cek_ganjil_atau_genap(459)
?>