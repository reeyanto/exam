<?php
include "../pages/koneksi.php";

if(isset($_POST['simpan'])) {
    $query  = "INSERT INTO santri (nama_santri, jenis_kelamin, asal_sekolah, alamat_santri)
                VALUES ('$_POST[nama]', '$_POST[jenis]', '$_POST[asal]', '$_POST[alamat]')";

    $simpan = mysqli_query($koneksi, $query);
    if($simpan) {
        echo "<script>alert('Simpan data sukses!');
        window.location='data.php';</script>";
    }
}
?>