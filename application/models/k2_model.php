<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class K2_model extends CI_Model {

	public function getPengeluaran($id)
	{
		$this->db->where('id_sekolah', $id);
		$query = $this->db->get('pengeluaran_k1');
    	return $query->result();
	}
	
	public function getSubKegiatan($id)
	{
		$this->db->where('id_pengeluaran', $id);
		$query = $this->db->get('sub_kegiatan_k2');
    	return $query->result();
	}

	public function createSubKegiatan($id)
	{
		$data = array(
      	'uraian_kegiatan' => $this->input->post('uraian'),
      	'id_pengeluaran' => $id,
    	);

    	$this->db->insert('sub_kegiatan_k2', $data);
	}

	public function editSubKegiatan($id1, $id2)
	{
		$data = array(
      	'uraian_kegiatan' => $this->input->post('uraian'),
    	);

		$this->db->where('id_sub_kegiatan_k2', $id2);
		$this->db->where('id_pengeluaran', $id1);
    	$this->db->update('sub_kegiatan_k2', $data);
	}

	public function getByIdSubKegiatan($id1, $id2)
	{
		$this->db->where('id_sub_kegiatan_k2', $id2);
		$this->db->where('id_pengeluaran', $id1);
		$query = $this->db->get('sub_kegiatan_k2');
		return $query->result();
	}

	public function deleteSubKegiatan($id1, $id2)
	{
		$this->db->where('id_sub_kegiatan_k2', $id2);
		$this->db->where('id_pengeluaran', $id1);
		$this->db->delete('sub_kegiatan_k2');
	}

	public function getDetailSubKegiatan($id)
	{
		$this->db->where('id_sub_kegiatan_k2', $id);
		$this->db->where('status', '0');
		$query = $this->db->get('detail_sub_kegiatan_k2');
    	return $query->result();
	}

	public function createDetailSubKegiatan($id)
	{
		$jumlah = $this->input->post('jumlah');
		$harga_satuan = $this->input->post('harga_satuan');
		$data = array(
      	'uraian_kegiatan' => $this->input->post('uraian'),
      	'jumlah' => $this->input->post('jumlah'),
      	'satuan' => $this->input->post('satuan'),
      	      	'harga_satuan' => $this->input->post('harga_satuan'),
      	      	      	'total' => $jumlah*$harga_satuan,
      	      	'bantuan_operasional_sekolah' => $this->input->post('bos'),
      	      	'nominal_bantuan_operasional_sekolah' => $this->input->post('nominalBos'),
      	      	      	'bantuan_lain' => $this->input->post('bantuan_lain'),
      	      	      	      	      	'nominal_bantuan_lain' => $this->input->post('nominalBantuan'),
      	'id_sub_kegiatan_k2' => $id,
    	);

    	$this->db->insert('detail_sub_kegiatan_k2', $data);
	}

	public function editDetailSubKegiatan($id1, $id2)
	{
		$jumlah = $this->input->post('jumlah');
		$harga_satuan = $this->input->post('harga_satuan');
		$data = array(
      	'uraian_kegiatan' => $this->input->post('uraian'),
      	'jumlah' => $this->input->post('jumlah'),
      	'satuan' => $this->input->post('satuan'),
      	      	'harga_satuan' => $this->input->post('harga_satuan'),
      	      	      	'total' => $jumlah*$harga_satuan,
      	      	'bantuan_operasional_sekolah' => $this->input->post('bos'),
      	      	'nominal_bantuan_operasional_sekolah' => $this->input->post('nominalBos'),
      	      	      	'bantuan_lain' => $this->input->post('bantuan_lain'),
      	      	      	      	      	'nominal_bantuan_lain' => $this->input->post('nominalBantuan'),
      	'id_sub_kegiatan_k2' => $id1,
    	);
		$this->db->where('id_sub_kegiatan_k2', $id1);
		$this->db->where('id_detail_sub_kegiatan_k2', $id2);
    	$this->db->update('detail_sub_kegiatan_k2', $data);
	}

	public function getByIdDetailSubKegiatan($id1, $id2)
	{
		$this->db->where('id_sub_kegiatan_k2', $id1);
		$this->db->where('id_detail_sub_kegiatan_k2', $id2);
		$query = $this->db->get('detail_sub_kegiatan_k2');
		return $query->result();
	}

	public function getByIdDataDetailSubKegiatan($id)
	{
		$this->db->where('id_detail_sub_kegiatan_k2', $id);
		$query = $this->db->get('detail_sub_kegiatan_k2');
		return $query->result();
	}

	public function deleteDetailSubKegiatan($id1, $id2)
	{
		$this->db->where('id_sub_kegiatan_k2', $id1);
		$this->db->where('id_detail_sub_kegiatan_k2', $id2);
		$this->db->delete('sub_kegiatan_k2');
	}
}

/* End of file k2_model.php */
/* Location: ./application/models/k2_model.php */