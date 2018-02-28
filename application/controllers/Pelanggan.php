<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggan extends MY_Controller
{
  private $data = [];

  public function __construct()
  {
    parent::__construct();
  }

  public function index()
  {
      $this->load->model('barang_m');

      $this->data['title']    = 'Home';
      $this->data['barang']   = $this->barang_m->get();
      $this->data['content']  = 'pelanggan/home';
      $this->template($this->data, 'pelanggan');
  }

  public function detail_barang()
  {
      $this->load->model('barang_m');

      $kode_barang                  = $this->uri->segment(3);

      $this->data['title']          = 'Detail Barang';
      $this->data['barang']         = $this->barang_m->get_row(['kode_barang' => $kode_barang]);
      $this->data['semua_barang']   = $this->barang_m->get();
      $this->data['content']        = 'pelanggan/detail_barang';
      $this->template($this->data, 'pelanggan');
  }

  public function cart()
  {
      $this->load->model('barang_m');

      $this->data['title']          = 'Cart';
      $this->data['semua_barang']   = $this->barang_m->get();
      $this->data['content']        = 'pelanggan/cart';
      $this->template($this->data, 'pelanggan');
  }
}
