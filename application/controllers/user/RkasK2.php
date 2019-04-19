<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RkasK2 extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation');
		$this->load->model('k2_model');

		if (!$this->session->logged_in == TRUE) {
			redirect('welcome','refresh');
		}
		if ($this->session->id_jenis_pengguna == 1 ) {
			redirect('admin/beranda','refresh');
		}
	}

	public function index()
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$data['pengeluaran'] = $this->k2_model->getPengeluaran();

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k2/indexPengeluaran', $data);
		$this->load->view('user/template/footer');
	}

	public function subKegiatan($id)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$data['sub'] = $this->k2_model->getSubKegiatan($id);

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k2/indexsubkegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function createSubKegiatan($id)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k2_model->createSubKegiatan($id);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask2/subKegiatan/'. $this->uri->segment(4),'refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k2/createSubKegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function editSubKegiatan($id1, $id2)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');
		$data['get'] = $this->k2_model->getByIdSubKegiatan($id1, $id2);

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k2_model->editSubKegiatan($id1, $id2);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask2/subKegiatan/'. $this->uri->segment(4),'refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k2/editSubKegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function deleteSubKegiatan($id1, $id2)
	{
		$this->k2_model->deleteSubKegiatan($id1, $id2);
		echo "<script>alert('Successfully Deleted'); </script>";
		redirect('user/Rkask2/subKegiatan/'. $this->uri->segment(4),'refresh');
	}

	public function getDetailSubKegiatan($id)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$data['detail'] = $this->k2_model->getDetailSubKegiatan($id);

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k2/indexdetailsubkegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function createDetailSubKegiatan($id)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k2_model->createDetailSubKegiatan($id);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask2/getDetailSubKegiatan/'. $this->uri->segment(4),'refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k2/createDetailSubKegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function editDetailSubKegiatan($id1, $id2)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K2';
		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');
		$data['get'] = $this->k2_model->getByIdDetailSubKegiatan($id1, $id2);

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k2_model->editDetailSubKegiatan($id1, $id2);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask2/getDetailSubKegiatan/'. $this->uri->segment(4),'refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k2/editDetailSubKegiatan', $data);
		$this->load->view('user/template/footer');
	}

	public function deleteDetailSubKegiatan($id1, $id2)
	{
		$this->k2_model->deleteDetailSubKegiatan($id1, $id2);
		echo "<script>alert('Successfully Deleted'); </script>";
		redirect('user/Rkask2/getDetailSubKegiatan/'. $this->uri->segment(4),'refresh');
	}

	public function getDataDetailSubKegiatan($id)
	{
		$data['detail'] = $this->k2_model->getByIdDataDetailSubKegiatan($id);
		// print_r($data['detail']);
		// die();
		$this->load->view('user/form_k2/showDetailSubKegiatan', $data);
	}

}

/* End of file RkasK2.php */
/* Location: ./application/controllers/user/RkasK2.php */