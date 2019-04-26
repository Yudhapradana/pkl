<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RkasK7 extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation');
		$this->load->model('k7_model');

		if (!$this->session->logged_in == TRUE) {
			redirect('welcome','refresh');
		}
		if ($this->session->id_jenis_pengguna == 1 ) {
			redirect('admin/beranda','refresh');
		}
	}

	public function index($id)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah K7';
		$data['pengeluaran'] = $this->k7_model->getPengeluaran($id);

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k7/indexPengeluaran', $data);
		$this->load->view('user/template/footer');
	}

	public function subKegiatan($id)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah K7';
		$data['sub'] = $this->k7_model->getSubKegiatan($id);

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k7/indexsubkegiatan', $data);
		$this->load->view('user/template/footer');
	}


	public function getDetailSubKegiatan($id)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah K7';
		$data['detail'] = $this->k7_model->getDetailSubKegiatan($id);

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k7/indexdetailsubkegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function createDetailSubKegiatan($id)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah (RKAS) K7';
		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k7_model->createDetailSubKegiatan($id);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask7/getDetailSubKegiatan/'. $this->uri->segment(4),'refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k7/createDetailSubKegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function editDetailSubKegiatan($id)
	{
		$data['page'] = 'Realisasi Kegiatan dan Anggaran Sekolah (RKAS) K7';
		$this->form_validation->set_rules('realisasi', 'realisasi', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k7_model->editDetailSubKegiatan($id);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask7/getDetailSubKegiatan/'. $this->uri->segment(4),'refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k7/editDetailSubKegiatan', $data);
		$this->load->view('user/template/footer');
	}

}

/* End of file RkasK7.php */
/* Location: ./application/controllers/user/RkasK7.php */