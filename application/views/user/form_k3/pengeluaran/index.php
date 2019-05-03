<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-warning">
            <div class="row">
              <div class="col-md-10">
                <h4 class="card-title">Daftar Pengeluaran</h4>
                <p class="card-category">menampilkan informasi tentang daftar pengeluaran sekolah</p>
              </div>
              <div class="col-md-2">
                <a href="<?php echo base_url('user/form_k3/createKeluar') ?>" rel="tooltip" title="Tambah Kegiatan" class="btn btn-primary">
                  <i class="material-icons">add</i>
                </a>
              </div>
            </div>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead class="text-primary">
                  <tr>
                    <th class="th-sm">No
                    </th>
                    <th class="th-sm">Nama Kegiatan
                    </th>
                    <th class="th-sm">Tanggal
                    </th>
                    <th class="th-sm">Jumlah Pengeluaran
                    </th>
                    <th class="th-sm">Aksi
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($pengeluaran as $key => $value): ?>
                    <tr>
                      <td><?php echo $key+1 ?></td>
                      <td><?php echo $value->nama_kegiatan ?></td>
                      <td><?php echo $value->tanggal ?></td>
                      <td><?php echo $value->pengeluaran ?></td>
                      <td>
                        <a href="<?php echo base_url('user/form_k3/editKeluar/') . $value->id_dana_kegiatan ?>" rel="tooltip" title="Ubah" class="btn btn-sm btn-warning">
                          <i class="material-icons">edit</i>
                        </a>
                        <a href="<?php echo base_url('user/form_k3/deleteKeluar/') . $value->id_dana_kegiatan ?>" rel="tooltip" title="Ubah" class="btn btn-sm btn-danger">
                          <i class="material-icons">delete</i>
                        </a>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
                <tfoot class="text-primary">
                  <tr>
                    <th>No
                    </th>
                    <th>Nama Kegiatan
                    </th>
                    <th>Tanggal
                    </th>
                    <th>Jumlah Pengeluaran
                    </th>
                    <th>Aksi
                    </th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>