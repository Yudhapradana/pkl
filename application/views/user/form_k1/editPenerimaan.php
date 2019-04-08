<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-warning">
            <h4 class="card-title">Tambah Data RKAS</h4>
            <p class="card-category">menambahkan informasi detail tentang RKAS</p>
          </div>
          <div class="card-body">
            <?php foreach ($penerimaan as $key): ?>
            
            <form action="<?php base_url('user/rkask1/editPenerimaan/'. $this->uri->segment(3)) ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="uraian">Uraian</label>
                <input type="text" class="form-control" name="uraian" value="<?php echo $key->uraian ?>" required>
                <div class="invalid-feedback">Masukkan uraian</div>
              </div>
              <div class="form-group">
                <label for="jumlah">Jumlah</label>
                <input type="number" class="form-control" name="jumlah" value="<?php echo $key->jumlah ?>" required>
                <div class="invalid-feedback">Masukkan jumlah dana RKAS.</div>
              </div>
              <div class="form-group">
                <label for="jumlah">Kategori</label>
                <select class="custom-select form-control" name="kategori" required>
                  <option selected value="<?php echo $key->jenis_penerimaan ?>"><?php echo $key->jenis_penerimaan ?></option>
                  <option value="sisa tahun lalu">Sisa Tahun Lalu</option>
                  <option value="pendapatan rutin">Pendapatan Rutin</option>
                  <option value="bantuan operasioanl sekolah">Bantuan Operasioanl Sekolah (BOS)</option>
                  <option value="bantuan">Bantuan</option>
                  <option value="pendapatan asal sekolah">Pendapatan Asli Sekolah</option>
                  </select>
                  <?php endforeach; ?>
                <div class="invalid-feedback">Kategori.</div>
              </div>

<!--               <div class="row">
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="tanggal">Tangal Kegiatan</label>
                    <input type="date" class="form-control" name="tanggal" value="<?php echo $kegiatan->tanggal ?>" required>
                    <div class="invalid-feedback">Masukkan tanggal kegiatan.</div>
                  </div>
                </div>
              </div> -->
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
