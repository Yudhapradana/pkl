<div class="modal-body">
  <h5>Nama Pemasukkan</h5>
  <p><?php echo $sumberdana->nama_kegiatan; ?></p>
  <
  <h5>Jumlah Pemasukkan</h5>
  <p><?php echo $sumberdana->pemasukkan; ?></p>
  <hr>
  <h5>Tanggal Submit</h5>
  <p><?php echo date('d-m-Y',strtotime($sumberdana->tanggal)) ?></p>
</div>
