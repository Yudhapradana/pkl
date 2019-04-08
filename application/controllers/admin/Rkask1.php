<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rkask1 extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation');
		$this->load->model('k1_model');

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

	public function penerimaan()
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K1';

		$data['jenis'] = $this->k1_model->get();
		$this->load->view('template/header', $data);
		$this->load->view('rencana_kegiatanK1/index', $data);
		$this->load->view('template/footer');
	}



}

/* End of file Rkask1.php */
/* Location: ./application/controllers/admin/Rkask1.php */