<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title ">Tambah Data Sumber Dana <?php echo $this->session->nama_sekolah; ?></h4>
            <p class="card-category">menambahkan informasi data Sumber sekolah</p>
          </div>
          <div class="card-body">
            <form action="<?php base_url('user/form_k3/createMasuk/') ?>" method="post" enctype="multipart/form-data">
              
              <div class="form-group">
                <label for="nama_kegiatan">Nama Pemasukkan</label>
                <input type="text" class="form-control" name="nama_kegiatan" placeholder="Keterangan dana Masuk" required>
                <div class="invalid-feedback">Saldo Awal</div>
              </div>

              <div class="form-group">
                <label for="pemasukkan">Jumlah Pemasukkan (IDR)</label>
                <input type="number" min="0" class="form-control" name="pemasukkan" value="0" required>
                <div class="invalid-feedback">Saldo Awal</div>
              </div>

              <div class="form-group">
                <label for="tanggal">Tanggal</label>
                <input type="date" class="form-control" name="tanggal" value="" required>
                <div class="invalid-feedback">Tanggal</div>
              </div>

                <div class="form-group">
                  <input class="btn btn-warning" type="submit" value="Simpan">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
