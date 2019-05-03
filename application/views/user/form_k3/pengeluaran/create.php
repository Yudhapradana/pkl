<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
  <div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title ">Tambah Data Pengeluaran</h4>
            <p class="card-category">menambahkan informasi data tentang pengeluaran</p>
          </div>
          <div class="card-body">
            <form action="<?php base_url('user/form_k3/createKeluar/') ?>" method="post" enctype="multipart/form-data">

              <div class="form-group">
                <label for="kegiatan">Nama Pengeluaran</label>
                <input type="text" class="form-control" name="nama_kegiatan" value="" required autofocus>
                <div class="invalid-feedback">Masukkan nama pengeluaran.</div>
              </div>

              <div class="form-group">
                <label for="jenis_kegiatan">Jenis Pengeluaran: </label>
                <select class="form-control" name="jenis_kegiatan">
                  <option disabled selected hidden>Pilih Pengeluaran</option>
                  <option value="pembayaran">Pembayaran</option>
                  <option value="pembelian">Pembelian</option>
                </select>
              </div>

              <div class="form-group">
                <label for="nama_toko">Nama Toko</label>
                <input type="text" class="form-control" name="nama_toko" placeholder="Wajib Diisi jika jenis Pengeluaran adalah Pembelian">
                <div class="invalid-feedback">Masukkan nama pengeluaran.</div>
              </div>

              <div class="form-group">
                <label for="Pengeluaran">Jumlah Pengeluaran (IDR)</label>
                <input min="1000" class="form-control number" name="pengeluaran" value="" required >
                <div class="invalid-feedback">Masukkan jumlah Pengeluaran</div>
              </div>

              <div class="form-group">
                <label for="tanggal">Tanggal</label>
                <input type="date" class="form-control" name="tanggal" value="" required >
                <div class="invalid-feedback">Masukkan Tanggal.</div>
              </div>
              <div class="form-group">
                <label for="gambar">Bukti Transaksi</label>
              </div>
              <label class="file">
                <input type="file" class="form-control-file" name="gambar">
                <span class="file-custom"></span>
              </label>

              <div class="form-group">
                <input class="btn btn-info" type="submit" value="Simpan">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
