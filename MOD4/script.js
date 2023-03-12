//Fikri Maulana 1301200239

//TIPE DATA NUMBER
var number = 1301200239;

//TIPE DATA STRING
var string = "Fikri Maulana";

//TIPE DATA BOOLEAN
var boolean = true;

//TIPE DATA OBJECT
var object = {
    nama : "Fikri",
    nim : "1301200239"
}

//TIPE DATA FUNCTION
const function_1 = (a, b) => {
    return a*b;
}

//TIPE DATA NULL
const tipenull = null;

//Fikri Maulana 1301200239

//VARIABLE var
var nama = "Fikri";

//VARIABLE let 
let nim = 1301200239;

//VARIABLE const
const umur = 20;

//Fikri Maulana 1301200239

//ARRAY 
var array = ["Fikri Maulana", "Sapriudin", "Adam Malik"]

//PEMANGGILAN ARRAY
array[0];

//MENAMBAHKAN ARRAY PADA AKHIR INDEX
array.push("Pikri");

//MENGHAPUS ARRAY PADA AKHIR INDEX
array.pop();

//MENGHAPUS ARRAY PADA AWAL INDEX
array.shift();

//MENAMBAHKAN ARRAY PADA AWAL INDEX
array.unshift("Index awl");

//MELIHAT JUMLAH ARRAY
array.length;

//FIKRI MAULANA 1301200239

//IF ELSE
var x = 10;
if (x > 5) {
    console.log("Nilai x lebih besar dari 5.");
} else {
    console.log("Nilai x tidak lebih besar dari 5.");
}

//FOR LOOP 
for (var i = 0; i < 5; i++) {
    console.log(i);
}

//WHILE
var i = 0;
while (i < 5) {
    console.log(i);
    i++;
}

//FIKRI MAULANA 1301200239

//OBJECT 
var objek1 = {
    nama : "Fikri Maulana",
    nim : "1301200239",
    "alamat rumah" : "Jalan Telkom"
}

//PEMANGGILAN KETIKA KEY TIDAK ADA SPASI
console.log(objek1.nama);

//PEMANGGILAN KETIKA KEY  ADA SPASI
console.log(objek1["alamat rumah"])

//PROTOTYPE
var objek2 = Object.create(objek1);
objek2.nama;

//FIKRI MAULANA 1301200239

//FUNGSI
function panggilNama(nama){
    return `Halo selamat datang ${nama}`
}

console.log(panggilNama("Fikri"));
var namaSaya = panggilNama("Fikri Maulana");
console.log(namaSaya);