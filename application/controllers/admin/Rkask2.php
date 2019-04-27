<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rkask2 extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation');
		$this->load->model('k1_model');
		$this->load->model('k2_model');
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
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$data['sekolah'] = $this->sekolah_model->get();

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask2/index', $data);
		$this->load->view('admin/template/footer');	
	}

	public function pengeluaran($id)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$data['pengeluaran'] = $this->k1_model->getPengeluaran($id);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask2/indexpengeluaran', $data);
		$this->load->view('admin/template/footer');	
	}

	public function subKegiatan($id, $id2)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$data['subkegiatan'] = $this->k2_model->getSubKegiatan($id2);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask2/indexSubkegiatan', $data);
		$this->load->view('admin/template/footer');	
	}

	public function detailSubKegiatan($id, $id2)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$data['detailsubkegiatan'] = $this->k2_model->getDetailSubKegiatan($id2);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask2/indexDetailSubkegiatan', $data);
		$this->load->view('admin/template/footer');	
	}



}

/* End of file Rkask2.php */
/* Location: ./application/controllers/admin/Rkask2.php */