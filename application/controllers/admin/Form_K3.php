<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Form_k3 extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('sekolah_model');
		$this->load->model('pengguna_model');
		$this->load->model('k3_model');
		if (!$this->session->logged_in == TRUE) {
			redirect('welcome','refresh');
		}
		if ($this->session->id_jenis_pengguna == 2 ) {
			redirect('admin/beranda','refresh');
		}
	}
	public function index()
	{
		$data['page'] = 'FORMULIR K3';
		$data['sekolah'] = $this->sekolah_model->get();

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/form_k3/index', $data);
		$this->load->view('admin/template/footer');	
	}

	public function showMasuk($id)
	{
		$data['page'] = 'Pemasukkan';
		$data['danaMasuk'] = $this->k3_model->getMasuk($id);
		$data['pengguna'] = $this->pengguna_model->get_by_id($this->session->id_pengguna);
		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/form_k3/danaMasuk', $data);
		$this->load->view('admin/template/footer');
	}

	public function showKeluar($id)
	{
		$data['page'] = 'Pengeluaran';
		$data['danaKeluar'] = $this->k3_model->getKeluar($id);
		$data['pengguna'] = $this->pengguna_model->get_by_id($this->session->id_pengguna);
		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/form_k3/danaKeluar', $data);
		$this->load->view('admin/template/footer');
	}

}
/* End of file sumberDana.php */
/* Location: ./application/controllers/sumberDana.php */