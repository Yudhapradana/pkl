<?php
	
	defined('BASEPATH') OR exit('No direct script access allowed');
	
	class k3_model extends CI_Model {
		
		public function getMasuk($id_sekolah)
		{
			$this->db->order_by('tanggal', 'ASC');
			$this->db->where('id_sekolah', $id_sekolah);
			$this->db->where('jenis_kegiatan', "pemasukkan");
			$query = $this->db->get('form_K3');
			return $query->result();
		}

		public function getKeluar($id_sekolah)
		{
			$this->db->order_by('tanggal', 'ASC');
			$this->db->where('id_sekolah', $id_sekolah);
			$this->db->where('jenis_kegiatan !=', "pemasukkan");
			$query = $this->db->get('form_K3');
			return $query->result();
		}

		public function createMasuk()
		{
			$data = array(
				'id_sekolah' => $this->session->id_sekolah,
				'nama_kegiatan' => $this->input->post('nama_kegiatan'),
				'jenis_kegiatan' => "pemasukkan",
				'pemasukkan' => $this->input->post('pemasukkan'),
				'pengeluaran' => '0',
				'tanggal' => $this->input->post('tanggal')
			);
			$query= $this->db->insert('form_K3', $data);
		}

		public function createKeluar()
		{
			$data = array(
				'id_sekolah' => $this->session->id_sekolah,
				'nama_kegiatan' => $this->input->post('nama_kegiatan'),
				'jenis_kegiatan' => $this->input->post('jenis_kegiatan'),
				'pemasukkan' => '0',
				'pengeluaran' => $this->input->post('pengeluaran'),
				'nama_toko' => $this->input->post('nama_toko'),
				'tanggal' => $this->input->post('tanggal')
			);
			$query= $this->db->insert('form_K3', $data);
		}

		public function get_by_id($id_sekolah,$id_dana_kegiatan)
		{
			$this->db->select('*');
			$this->db->from('form_K3');
			$this->db->where(array('id_sekolah' => $id_sekolah, 'id_dana_kegiatan' => $id_dana_kegiatan));
			$query = $this->db->get();
			return $query->row();
		}

		public function editMasuk($id_sekolah,$id_dana_kegiatan)
		{
			$data = array(
				'nama_kegiatan' => $this->input->post('nama_kegiatan'),
				'pemasukkan' => $this->input->post('pemasukkan'),
				'tanggal' => $this->input->post('tanggal')
			);
			$this->db->where(array('id_sekolah' => $id_sekolah, 'id_dana_kegiatan' => $id_dana_kegiatan));
			$this->db->update('form_K3', $data);
		}

		public function editKeluar($id_sekolah,$id_dana_kegiatan)
		{
			if($this->input->post('jenis_kegiatan')==""){
			$data = array(
				'id_sekolah' => $this->session->id_sekolah,
				'nama_kegiatan' => $this->input->post('nama_kegiatan'),
				'pengeluaran' => $this->input->post('pengeluaran'),
				'nama_toko' => $this->input->post('nama_toko'),
				'tanggal' => $this->input->post('tanggal')
				);
			}else{
			$data = array(
				'id_sekolah' => $this->session->id_sekolah,
				'nama_kegiatan' => $this->input->post('nama_kegiatan'),
				'jenis_kegiatan' => $this->input->post('jenis_kegiatan'),
				'pengeluaran' => $this->input->post('pengeluaran'),
				'nama_toko' => $this->input->post('nama_toko'),
				'tanggal' => $this->input->post('tanggal')
				);
			}
			$this->db->where(array('id_sekolah' => $id_sekolah, 'id_dana_kegiatan' => $id_dana_kegiatan));
			$this->db->update('form_K3', $data);
		}

		public function delete($id)
		{
			$this->db->where('id_dana_kegiatan', $id);
			$this->db->delete('form_K3');
		}
			
	
	}
	
	/* End of file formK3.php */
	/* Location: ./application/models/formK3.php */
?>