<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class K1_model extends CI_Model {

	public function getPenerimaan($id)
	{
		$this->db->where('id_sekolah', $id);
		$query = $this->db->get('penerimaan_k1');
    	return $query->result();
	}

	public function createPenerimaan($id)
	{
		$data = array(
      	'uraian' => $this->input->post('uraian'),
      	'jumlah' => $this->input->post('jumlah'),
      	'jenis_penerimaan' => $this->input->post('kategori'),
      	'id_sekolah' => $id,
    	);

    	$this->db->insert('penerimaan_k1', $data);
	}
	
	public function editPenerimaan($id)
	{
		$data = array(
      	'uraian' => $this->input->post('uraian'),
      	'jumlah' => $this->input->post('jumlah'),
      	'jenis_penerimaan' => $this->input->post('kategori'),
    	);

    	$this->db->where('id_penerimaan', $id);
	    $this->db->update('penerimaan_k1', $data);
	}

	public function deletePenerimaan($id)
	{
		$this->db->where('id_penerimaan', $id);
	    $this->db->delete('penerimaan_k1');
	}

	public function getByIdPenerimaan($id)
	{
		$this->db->where('id_penerimaan', $id);
		$query = $this->db->get('penerimaan_k1');
		return $query->result();
	}

	public function getPengeluaran($id)
	{
		$this->db->where('id_sekolah', $id);
		$query = $this->db->get('pengeluaran_k1');
    	return $query->result();
	}

	public function createPengeluaran($id)
	{
		$data = array(
      	'uraian' => $this->input->post('uraian'),
      	'jumlah' => $this->input->post('jumlah'),
      	'jenis_pengeluaran' => $this->input->post('kategori'),
      	'id_sekolah' => $id,
    	);

    	$this->db->insert('pengeluaran_k1', $data);
	}
	
	public function editPengeluaran($id)
	{
		$data = array(
      	'uraian' => $this->input->post('uraian'),
      	'jumlah' => $this->input->post('jumlah'),
      	'jenis_pengeluaran' => $this->input->post('kategori'),
    	);

    	$this->db->where('id_pengeluaran', $id);
	    $this->db->update('pengeluaran_k1', $data);
	}

	public function deletePengeluaran($id)
	{
		$this->db->where('id_pengeluaran', $id);
	    $this->db->delete('pengeluaran_k1');
	}

	public function getByIdPengeluaran($id)
	{
		$this->db->where('id_pengeluaran', $id, FALSE);
		$query = $this->db->get('pengeluaran_k1');
		return $query->result();
	}


}

/* End of file k1_model.php */
/* Location: ./application/models/k1_model.php */