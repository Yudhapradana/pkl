<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url() ?>assets/img/logo.png">
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/img/logo.png') ?>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Pengelolaan Dana | Dinas Pendidikan Kota Batu
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, Pengguna-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->

  <!-- <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.material.min.css"> -->
  <link href="<?php echo base_url('assets/css/material-dashboard.css'); ?>" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="<?php echo base_url('assets/demo/demo.css'); ?>" rel="stylesheet" />

  <!-- MDBootstrap Datatables  -->
  <link href="<?php echo base_url('assets/css/addons/datatables.min.css'); ?>" rel="stylesheet">


</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="<?php echo base_url('assets/img/sidebar-1.jpg') ?>">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="#" class="simple-text logo-normal">
          <?php echo $this->session->nama_sekolah ?>
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item <?php echo ($this->uri->segment(1) == 'beranda') ? 'active':''; ?>">
            <a class="nav-link" href="<?php echo site_url('user/beranda') ?>">
              <i class="material-icons">dashboard</i>
              <p>Beranda</p>
            </a>
          <li class="nav-item <?php echo ($this->uri->segment(2) == 'rkask1/penerimaan') ? 'active':''; ?> ">
            <a class="nav-link" href="<?php echo site_url('user/rkask1/penerimaan/'. $this->session->id_sekolah)?>">
              <i class="material-icons">content_paste</i>
              <p>Rencana Penerimaan K1</p>
            </a>
          </li>
          <li class="nav-item <?php echo ($this->uri->segment(2) == 'rkask1/pengeluaran') ? 'active':''; ?> ">
            <a class="nav-link" href="<?php echo site_url('user/rkask1/pengeluaran/'.$this->session->id_sekolah)?>">
              <i class="material-icons">content_paste</i>
              <p>Rencana Pengeluaran K1</p>
            </a>
          </li>
          <li class="nav-item <?php echo ($this->uri->segment(2) == 'rkask2') ? 'active':''; ?> ">
            <a class="nav-link" href="<?php echo site_url('user/rkask2/index/'.$this->session->id_sekolah)?>">
              <i class="material-icons">content_paste</i>
              <p>RKAS K2</p>
            </a>
          </li>
          <li class="nav-item <?php echo ($this->uri->segment(2) == 'rkask7') ? 'active':''; ?> ">
            <a class="nav-link" href="<?php echo site_url('user/rkask7/index/'.$this->session->id_sekolah)?>">
              <i class="material-icons">content_paste</i>
              <p>RKAS K7</p>
            </a>
          </li>
          <li class="nav-item <?php echo ($this->uri->segment(2) == 'form_k3/showMasuk') ? 'active':''; ?>">
            <a class="nav-link" href="<?php echo site_url('user/form_k3/showMasuk') ?>">
              <i class="material-icons">content_paste</i>
              <!-- <i class="material-icons">assessment</i> -->
              <p>Pemasukkan (K3)</p>
            </a>
          </li>
          <li class="nav-item <?php echo ($this->uri->segment(1) == 'form_k3/showKeluar') ? 'active':''; ?>">
            <a class="nav-link" href="<?php echo site_url('user/form_k3/showKeluar') ?>">
              <i class="material-icons">assessment</i>
              <p>Pengeluaran (K3)</p>
            </a>
          </li>
          <li class="nav-item <?php echo ($this->uri->segment(1) == 'laporan') ? 'active':''; ?>">
            <a class="nav-link" href="<?php echo site_url('user/laporan') ?>">
              <i class="material-icons">library_books</i>
              <p>Laporan</p>
            </a>
          </li>
          <!-- <li class="nav-item <?php echo ($this->uri->segment(1) == '') ? 'active':''; ?>">
            <a class="nav-link" href="<?php echo site_url('') ?>">
              <i class="material-icons">dashboard</i>
              <p>Beranda</p>
            </a>
          </li> -->
          <li class="nav-item <?php echo ($this->uri->segment(1) == 'pengguna') ? 'active':''; ?> ">
            <a class="nav-link" href="<?php echo site_url('user/pengguna/')?>">
              <i class="material-icons">person</i>
              <p>Profil Sekolah</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo"><?php echo $page ?></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="<?php echo base_url('user/pengguna/gantiPass'). $this->session->id_pengguna ?>"  data-toggle="modal" data-target="#gantiPass">Ganti Password</a>
                  <a class="dropdown-item" href="<?php echo base_url('autentikasi/logout')?>">Keluar</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- Modal -->
  <div class="modal fade" id="gantiPass" tabindex="-1" role="dialog" aria-labelledby="gantiPassTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Silahkan Masuk</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="<?php echo base_url().'pengguna/gantiPass/'.$this->session->id_pengguna ?>" method='post'>
          <div class="form-group">
            <label for="" class="label">Password Lama</label>
            <input type="text" name="password" class="form-control" id="recipient-name" autofocus required>
          </div>
          <div class="form-group">
            <label for="" class="label">Password Baru</label>
            <input type="password" name="password2" class="form-control" id="recipient-name" required>
          </div>
          <div class="form-group">
            <label for="" class="label">Konfirmasi Password</label>
            <input type="password" name="password3" class="form-control" id="recipient-name" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
          <button type="submit" class="btn btn-primary">Masuk</button>
        </div>
        </form>
      </div>
    </div>
  </div>
