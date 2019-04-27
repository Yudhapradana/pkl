<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rkask7 extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation');
		$this->load->model('k7_model');
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
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah (RKAS) K7';
		$data['sekolah'] = $this->sekolah_model->get();

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask7/index', $data);
		$this->load->view('admin/template/footer');	
	}

	public function pengeluaran($id)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah (RKAS) K7';
		$data['pengeluaran'] = $this->k7_model->getPengeluaran($id);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask7/indexpengeluaran', $data);
		$this->load->view('admin/template/footer');	
	}

	public function subKegiatan($id, $id2)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah (RKAS) K7';
		$data['subkegiatan'] = $this->k7_model->getSubKegiatan($id2);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask7/indexSubkegiatan', $data);
		$this->load->view('admin/template/footer');	
	}

	public function detailSubKegiatan($id, $id2)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah (RKAS) K7';
		$data['detailsubkegiatan'] = $this->k7_model->getDetailSubKegiatan($id2);
		$data['sekolah'] = $this->sekolah_model->get_by_id($id);

		$this->load->view('admin/template/header', $data);
		$this->load->view('admin/rkask7/indexDetailSubkegiatan', $data);
		$this->load->view('admin/template/footer');	
	}

}

/* End of file Rkask7.php */
/* Location: ./application/controllers/admin/Rkask7.php */