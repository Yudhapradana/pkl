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
            <form action="<?php base_url('user/rkask2/createDetailSubKegiatan/'). $this->uri->segment(4) ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="uraian">Uraian</label>
                <input type="text" class="form-control" name="uraian" value="" required>
                <div class="invalid-feedback">Masukkan uraian</div>
              </div>
              <div class="form-group">
                <label for="jumlah">Jumlah Realisasi</label>
                <input type="number" class="form-control" name="realisasi" value="" required>
                <div class="invalid-feedback">Masukkan jumlah</div>
              </div>
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
