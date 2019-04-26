<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title">Tambah Data RKAS K2</h4>
            <p class="card-category">menambahkan informasi detail tentang RKAS K2</p>
          </div>
          <div class="card-body">
            <form action="<?php base_url('user/rkask2/editDetailSubKegiatan/'). $this->uri->segment(4) ?>" method="post" enctype="multipart/form-data">
              <?php foreach ($get as $key => $value): ?>
              <div class="form-group">
                <label for="uraian">Uraian</label>
                <input type="text" class="form-control" name="uraian" value="<?php echo $value->uraian_kegiatan  ?>" required>
                <div class="invalid-feedback">Masukkan uraian</div>
              </div>
              <div class="form-group">
                <label for="jumlah">Jumlah</label>
                <input type="number" class="form-control" name="jumlah" value="<?php echo $value->jumlah  ?>" required>
                <div class="invalid-feedback">Masukkan jumlah</div>
              </div>
              <div class="form-group">
                <label for="satuan">Satuan</label>
                <input type="text" class="form-control" name="satuan" value="<?php echo $value->satuan  ?>" required>
                <div class="invalid-feedback">Masukkan satuan</div>
              </div>
              <div class="form-group">
                <label for="hargaSatuan">Harga Satuan</label>
                <input type="number" class="form-control" name="harga_satuan" value="<?php echo $value->harga_satuan  ?>" required>
                <div class="invalid-feedback">Masukkan harga satuan</div>
              </div>
              <div class="form-group">
                <label for="bos">Bantuan Operasional Sekolah</label>
                <select class="custom-select form-control" name="bos" required>
                  <option selected value="<?php echo $value->bantuan_operasional_sekolah  ?>" hidden=""><?php echo $value->bantuan_operasional_sekolah  ?></option>
                  <option value="Pusat">Pusat</option>
                  <option value="Pembelajaran">Pembelajaran</option>
                  <option value="TNS">TNS</option>
                  <option value="TMS">TMS</option>
                  <option value="Kelas Olahraga">Kelas Olahraga</option>
                  <option value="">Tidak ada</option>
                  </select>
                <div class="invalid-feedback">Kategori.</div>
              </div>
              <div class="form-group">
                <label for="nominal">Nominal BOS</label>
                <input type="number" class="form-control" name="nominalBos" value="<?php echo $value->nominal_bantuan_operasional_sekolah  ?>" required>
                <div class="invalid-feedback">Masukkan nominal</div>
              </div>
              <div class="form-group">
                <label for="bantuanlain">Bantuan Lainnya</label>
                <select class="custom-select form-control" name="bantuanLainnya" required>
                  <option selected value="<?php echo $value->bantuan_lain  ?>" hidden=""><?php echo $value->bantuan_lain  ?></option>
                  <option value="Subsidi UN">Subsidi UN</option>
                  <option value="Bantuan dll">Bantuan Dll</option>
                  <option value="Grand Sekolah Rujukan">Grand Sekolah Rujukan</option>
                                    <option value="">Tidak ada</option>
                  </select>
                <div class="invalid-feedback">Kategori.</div>
              </div>
              <div class="form-group">
                <label for="nominal">Nominal Bantuan Lainnya</label>
                <input type="number" class="form-control" name="nominalBantuan" value="<?php echo $value->nominal_bantuan_lain  ?>" required>
                <div class="invalid-feedback">Masukkan Nominal</div>
              </div>
               <?php endforeach ?>
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
