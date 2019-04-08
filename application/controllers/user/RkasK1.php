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
		$data['penerimaan'] = $this->k1_model->getPenerimaan();

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k1/indexPenerimaan', $data);
		$this->load->view('user/template/footer');
	}

	public function createPenerimaan()
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K1';
		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');
		$this->form_validation->set_rules('jumlah', 'jumlah', 'trim|required');
		$this->form_validation->set_rules('kategori', 'kategori', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k1_model->createPenerimaan();
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask1/penerimaan','refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k1/createPenerimaan', $data);
		$this->load->view('user/template/footer');
	}

	public function editPenerimaan($id)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K1';
		$data['penerimaan'] = $this->k1_model->getByIdPenerimaan($id);

		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');
		$this->form_validation->set_rules('jumlah', 'jumlah', 'trim|required');
		$this->form_validation->set_rules('kategori', 'kategori', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k1_model->editPenerimaan($id);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask1/penerimaan','refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k1/editPenerimaan', $data);
		$this->load->view('user/template/footer');
	}

	public function deletePenerimaan($id)
	{
		$this->k1_model->deletePenerimaan($id);
		echo "<script>alert('Successfully Deleted'); </script>";
		redirect('user/Rkask1/penerimaan','refresh');
	}

	public function pengeluaran()
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K1';
		$data['pengeluaran'] = $this->k1_model->getPengeluaran();

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k1/indexPengeluaran', $data);
		$this->load->view('user/template/footer');
	}

	public function createPengeluaran()
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K1';
		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');
		$this->form_validation->set_rules('jumlah', 'jumlah', 'trim|required');
		$this->form_validation->set_rules('kategori', 'kategori', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k1_model->createPengeluaran();
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask1/pengeluaran','refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k1/createPengeluaran', $data);
		$this->load->view('user/template/footer');
	}

	public function editPengeluaran($id)
	{
		$data['page'] = 'Rencana Kegiatan dan Anggaran Sekolah (RKAS) K1';
		$data['pengeluaran'] = $this->k1_model->getByIdPengeluaran($id);

		$this->form_validation->set_rules('uraian', 'uraian', 'trim|required');
		$this->form_validation->set_rules('jumlah', 'jumlah', 'trim|required');
		$this->form_validation->set_rules('kategori', 'kategori', 'trim|required');

		if ($this->form_validation->run()==FALSE){
			echo validation_errors();
		}else{
			$this->k1_model->editPengeluaran($id);
			echo "<script>alert('Successfully Added'); </script>";
			redirect('user/Rkask1/pengeluaran','refresh');
		}

		$this->load->view('user/template/header', $data);
		$this->load->view('user/form_k1/editPengeluaran', $data);
		$this->load->view('user/template/footer');
	}

	public function deletePengeluaran($id)
	{
		$this->k1_model->deletePengeluaran($id);
		echo "<script>alert('Successfully Deleted'); </script>";
		redirect('user/Rkask1/pengeluaran','refresh');
	}

}

/* End of file Rkask1.php */
/* Location: ./application/controllers/admin/Rkask1.php */