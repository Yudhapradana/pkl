<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-warning">
            <div class="row">
              <div class="col-md-9">
              <h4 class="card-title">Rencana Kegiatan dan Anggaran Sekolah</h4>
            <p class="card-category">menampilkan informasi tentang RKAS format Bos-K1</p>
          </div>
          <div class="col-md-3">
              <a href="<?php echo base_url('user/rkask2/createDetailSubKegiatan/') . $this->uri->segment(4)   ?>" rel="tooltip" title="Tambah" class="btn btn-primary">
                <i class="material-icons">add</i>
              </a>
            </div>
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
                    <th class="th-sm">Uraian
                    </th>
                    <th class="th-sm">Jumlah
                    </th>
                    <th class="th-sm">Harga Satuan
                    </th>
                    <th class="th-sm">Total
                    </th>
                    <th class="th-sm">Aksi
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($detail as $key => $value): ?>
                    <tr>
                      <td><?php echo $key+1 ?></td>
                      <td><?php echo $value->uraian_kegiatan ?></td>
                      <td><?php echo $value->jumlah.' '.$value->satuan ?></td>
                      <td><?php echo $value->harga_satuan ?></td>
                      <td><?php echo $value->total ?></td>
                      <td>  
                        <a href="<?php echo base_url('user/rkask2/editDetailSubKegiatan/' . $this->uri->segment(4). '/') . $value->id_detail_sub_kegiatan_k2; ?>" rel="tooltip" title="Edit" class="btn btn-sm btn-info">
                          <i class="material-icons">edit</i>
                        </a>
                        <a href="<?php echo base_url('user/rkask2/deleteDetailSubKegiatan/'. $this->uri->segment(4). '/') . $value->id_detail_sub_kegiatan_k2; ?>" rel="tooltip" title="Hapus" class="btn btn-sm btn-danger">
                          <i class="material-icons">delete</i>
                        </a>
                        <a href="#" onclick="openModal(<?php echo $value->id_detail_sub_kegiatan_k2; ?>)" rel="tooltip" title="Lihat" class="btn btn-sm btn-success">
                        <i class="material-icons">zoom_out_map</i>
                      </a>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
                <tfoot class="text-primary">
                  <tr>
                    <th>No
                    </th>
                    <th>Uraian
                    </th>
                    <th>Jumlah
                    </th>
                    <th>Harga Satuan
                    </th>
                    <th>Total
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
    .</div>
  </div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Informasi Detail Sub Kegiatan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="modal-content">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
function openModal(id) {
  $.ajax({
    url:"<?php echo base_url('user/rkask2/getDataDetailSubKegiatan/'); ?>"+id,
    method: 'post',
    data:null
  }).done(function(data) {
    $('#modal-content').html(data);
    $('#exampleModalCenter').modal('show');
  });
}
</script>