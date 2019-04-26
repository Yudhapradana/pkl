<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class K7_model extends CI_Model {

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
	
	public function getDetailSubKegiatan($id)
	{
		$this->db->where('id_sub_kegiatan_k2', $id);
		$query = $this->db->get('detail_sub_kegiatan_k2');
    	return $query->result();
	}

	public function createDetailSubKegiatan($id)
	{
		$data = array(
      	'uraian_kegiatan' => $this->input->post('uraian'),
      	'realisasi' => $this->input->post('realisasi'),
      	'id_sub_kegiatan_k2' => $id,
      	'status' => '1',
    	);

    	$this->db->insert('detail_sub_kegiatan_k2', $data);
	}

	public function editDetailSubKegiatan($id)
	{
		$data = array(
      	
      	'realisasi' => $this->input->post('realisasi'),
    	);

		$this->db->where('id_detail_sub_kegiatan_k2', $id);
    	$this->db->update('detail_sub_kegiatan_k2', $data);
	}

}

/* End of file k7_model.php */
/* Location: ./application/models/k7_model.php */