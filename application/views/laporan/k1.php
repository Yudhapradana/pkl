<table width="100%">
      <thead>
            <center>
                  <h3>RENCANA KEGIATAN DAN ANGGARAN SEKOLAH (RKAS)</h3>
                  <h3>TAHUN PELAJARAN <?php echo $periode ?></h3>
                  <h3> </h3>
            </center>
      </thead>
      <tbody>
            <tr>
                  <td>Nama Sekolah</td>
                  <td>:</td>
                  <td><?php echo $nama ?></td>
            </tr>
            <tr>
                  <td>Desa / Kecamatan</td>
                  <td>:</td>
                  <td><?php echo $this->session->kecamatan ?></td>
            </tr>
            <tr>
                  <td>Kabupaten / Kota</td>
                  <td>:</td>
                  <td>Kota Batu</td>
            </tr>
            <tr>
                  <td>Provinsi</td>
                  <td>:</td>
                  <td>Jawa Timur</td>
            </tr>
            <tr>
                  <td> </td>
                  <td> </td>
                  <td> </td>
            </tr>
      </tbody>
</table>

<table border="1" width="100%">
      <thead>
            <tr>
                  <th colspan="4" width="49%">PENERIMAAN</th>
            </tr>
            <tr>
                  <th width="4%">No.</th>
                  <th width="5%">No. Kode</th>
                  <th width="20%">Uraian</th>
                  <th width="20%">Jumlah</th>
            </tr>
            <?php foreach ($jenispenerimaan as $key => $value): ?>
            <tr>
                 <th><?php 
                   $romawi = "kosong";
                   $jenis=  $value->id_jenis_penerimaan;
                   if($jenis == 1){
                         $romawi = "I";
                   }elseif ($jenis == 2) {
                         $romawi = "II";
                   }elseif ($jenis == 3) {
                         $romawi = "III";
                   }elseif ($jenis == 4) {
                         $romawi = "IV";
                   }elseif ($jenis == 5) {
                         $romawi = "V";
                   }
                   ?>
                  <?php echo $romawi; ?></th>
                  <th><?php echo $value->id_jenis_penerimaan; ?></th>
                  <th><?php echo $value->uraian; ?></th>
                  <th></th>                  

                  <?php 
                  $nomor = $value+1;
                  $idJenis=  $value->id_jenis_penerimaan;
                  if ($nomor == $idJenis && $nomor <= $sumjenisPenerimaan) {
                        foreach ($variable as $key => $value) {
                              # code...
                        }
                  }

                   ?>
            </tr>
           <?php endforeach ?>
      </thead>
</table>