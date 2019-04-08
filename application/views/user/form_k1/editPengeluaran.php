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
            <?php foreach ($pengeluaran as $key): ?>
            
            <form action="<?php base_url('user/rkask1/editPengeluaran/'. $this->uri->segment(3)) ?>" method="post" enctype="multipart/form-data">
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
                  <option selected value="<?php echo $key->jenis_pengeluaran ?>" hidden><?php echo $key->jenis_pengeluaran ?></option>
                  <option value="program sekolah">Program Sekolah</option>
                  <option value="belanja lainnya">Belanja Lainnya</option>
                  </select>
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
