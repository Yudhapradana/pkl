<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-info">
            <h4 class="card-title">Edit Data RKAS K2</h4>
            <p class="card-category">menambahkan informasi detail tentang RKAS K2</p>
          </div>
          <div class="card-body">
            <form action="<?php base_url('user/rkask2/createSubKegiatan/'). $this->uri->segment(4) ?>" method="post" enctype="multipart/form-data">
              <?php foreach ($get as $key => $value): ?>
              <div class="form-group">
                <label for="uraian">Uraian</label>
                <input type="text" class="form-control" name="uraian" value="<?php echo $value->uraian_kegiatan  ?>" required>
                <div class="invalid-feedback">Masukkan uraian</div>
              </div>
              <!--               <div class="row">
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="tanggal">Tanggal Kegiatan</label>
                    <input type="date" class="form-control" name="tanggal" value="" required>
                    <div class="invalid-feedback">Masukkan tanggal kegiatan.</div>
                  </div>
                </div>
              </div> -->
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
