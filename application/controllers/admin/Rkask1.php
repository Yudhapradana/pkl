<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rkask1 extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation');
		$this->load->model('k1_model');
		$this->load->model('sekolah_model');

		if (!$this->session->logged_in == TRUE) {
			redirect('welcome','refresh');
		}
		if ($this->session->id_jenis_pengguna == 2 ) {
			redirect('admin/beranda','refresh');
		}
	}

	public function index()
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K1';
		$data['sekolah'] = $this->sekolah_model->get();

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask1/index', $data);
		$this->load->view('admin/template/footer');	
	}

	public function penerimaan($id)
	{
		$data['page'] = 'Penerimaan (RKAS) K1';
		$data['penerimaan'] = $this->k1_model->getPenerimaan($id);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask1/indexpenerimaan', $data);
		$this->load->view('admin/template/footer');	
	}

	public function pengeluaran($id)
	{
		$data['page'] = 'Pengeluaran (RKAS) K1';
		$data['pengeluaran'] = $this->k1_model->getPengeluaran($id);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask1/indexpengeluaran', $data);
		$this->load->view('admin/template/footer');	
	}



}

/* End of file Rkask1.php */
/* Location: ./application/controllers/admin/Rkask1.php */