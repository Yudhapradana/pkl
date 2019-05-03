<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Form_k3 extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('sekolah_model');
		$this->load->model('pengguna_model');
		$this->load->model('k3_model');
		if (!$this->session->logged_in == TRUE) {
			redirect('welcome','refresh');
		}
		if ($this->session->id_jenis_pengguna == 1 ) {
			redirect('admin/beranda','refresh');
		}
	}
	public function index()
	{
		
	}

	public function showMasuk()
	{
		$data['page'] = 'Pemasukkan';
		$data['pemasukkan'] = $this->k3_model->getMasuk($this->session->id_sekolah);
		$data['pengguna'] = $this->pengguna_model->get_by_id($this->session->id_pengguna);
		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k3/pemasukkan/index', $data);
		$this->load->view('user/template/footer');
	}

	public function showKeluar()
	{
		$data['page'] = 'Pengeluaran';
		$data['pengeluaran'] = $this->k3_model->getKeluar($this->session->id_sekolah);
		$data['pengguna'] = $this->pengguna_model->get_by_id($this->session->id_pengguna);
		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k3/pengeluaran/index', $data);
		$this->load->view('user/template/footer');
	}

	public function createMasuk()
	{
		$data['page'] = 'Pemasukkan';
		$data2['sekolah'] = $this->sekolah_model->get();

		$this->form_validation->set_rules('nama_kegiatan', 'Nama Pemasukkan', 'trim|required');
		$this->form_validation->set_rules('pemasukkan', 'Jumlah Pemasukkank', 'trim|required');
		$this->form_validation->set_rules('tanggal', 'Tanggal', 'trim|required');
		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k3_model->createMasuk();
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/form_k3/showMasuk','refresh');
		}
		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k3/pemasukkan/create', $data2);
		$this->load->view('user/template/footer');
	}

	public function createKeluar()
	{
		$data['page'] = 'Pengeluaran';
		$data2['sekolah'] = $this->sekolah_model->get();

		$this->form_validation->set_rules('nama_kegiatan', 'Nama Pemasukkan', 'trim|required');
		$this->form_validation->set_rules('jenis_kegiatan', 'Jenis Kegiatan', 'trim|required');
		$this->form_validation->set_rules('nama toko', 'Nama Toko', 'trim');
		$this->form_validation->set_rules('pengeluaran', 'Jumlah Pengeluaran', 'trim|required');
		$this->form_validation->set_rules('tanggal', 'Tanggal', 'trim|required');
		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k3_model->createKeluar();
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/form_k3/showKeluar','refresh');
		}
		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k3/pengeluaran/create', $data2);
		$this->load->view('user/template/footer');
	}

	public function editMasuk($id_dana_kegitan)
	{
		$data['page'] = 'Pemasukkan';
		$data2['danaMasuk'] = $this->k3_model->get_by_id($this->session->id_sekolah,$id_dana_kegitan);

		$this->form_validation->set_rules('nama_kegiatan', 'Nama Kegaitan', 'trim|required');
		$this->form_validation->set_rules('pemasukkan', 'Pemasukkan', 'trim|required');
		$this->form_validation->set_rules('tanggal', 'Tanggal', 'trim|required');
		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k3_model->editMasuk($this->session->id_sekolah,$id_dana_kegitan);
			echo "<script>alert('Successfully Updated'); </script>";
			redirect('user/Form_K3/showMasuk','refresh');
		}
		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k3/pemasukkan/edit', $data2);
		$this->load->view('user/template/footer');
	}

	public function editKeluar($id_dana_kegitan)
	{
		$data['page'] = 'Pemasukkan';
		$data2['danaKeluar'] = $this->k3_model->get_by_id($this->session->id_sekolah,$id_dana_kegitan);

		$this->form_validation->set_rules('nama_kegiatan', 'Nama Kegaitan', 'trim|required');
		$this->form_validation->set_rules('pengeluaran', 'Pengeluaran', 'trim|required');
		$this->form_validation->set_rules('tanggal', 'Tanggal', 'trim|required');
		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k3_model->editKeluar($this->session->id_sekolah,$id_dana_kegitan);
			echo "<script>alert('Successfully Updated'); </script>";
			redirect('user/Form_K3/showKeluar','refresh');
		}
		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k3/pengeluaran/edit', $data2);
		$this->load->view('user/template/footer');
	}

	public function deleteMasuk($id)
	{
		$this->k3_model->delete($id);
		echo "<script>alert('Successfully Deleted'); </script>";
		redirect('user/Form_K3/showMasuk','refresh');
	}

	public function deleteKeluar($id)
	{
		$this->k3_model->delete($id);
		echo "<script>alert('Successfully Deleted'); </script>";
		redirect('user/Form_K3/showKeluar','refresh');
	}
}
/* End of file sumberDana.php */
/* Location: ./application/controllers/sumberDana.php */