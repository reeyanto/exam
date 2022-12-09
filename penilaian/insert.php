        <?php
            if (isset($_POST['simpan'])) {
                $santri = $_POST['nama'];
                $nilai_alternatif = [$_POST['nilai_k1'], $_POST['nilai_k2'], $_POST['nilai_k3'], $_POST['nilai_k4'], $_POST['nilai_k5']];
                $kriteria = [$_POST['k1'], $_POST['k2'], $_POST['k3'], $_POST['k4'], $_POST['k5']];
                
                $query = "insert into nilai_normalisasi_alternatif (id_kriteria, id_santri, nilai_alternatif) values ";
                foreach ($kriteria as $i => $k) {
                    $query .= "('$k', '$santri', '$nilai_alternatif[$i]'), ";
                }
                $query = substr($query, 0, -2);
                echo $query;
                exit();
                $simpan = mysqli_query($koneksi, $query) or die(mysqli_error($koneksi));
            }
        ?>
