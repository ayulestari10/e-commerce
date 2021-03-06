<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MY_Controller
{

	public function __construct() {

		parent::__construct();
		$this->data['id_pengguna']	= $this->session->userdata( 'id_pengguna' );
		if ( isset( $this->data['id_pengguna'] ) ) {

			$this->data['role']	= $this->session->userdata( 'id_role' );
			switch ( $this->data['role'] ) {

				case "1":
					redirect( 'pelanggan' );
					break;

				case "2":
					redirect( 'admin' );
					break;

				case "3":
					redirect( 'super_admin' );
					break;

			}

		}

		// $this->load->model( 'instagram_m' );
		// $this->data['code'] = $this->input->get( 'code' );
		// if ( empty( $this->data['code'] ) ) {
		// 	redirect( $this->instagram_m->login_url() );
		// 	exit;
		// }

	}

	public function index() {

		if ( $this->POST( 'login' ) ) {

			$this->load->model( 'login_m' );
			$pengguna = $this->login_m->login_pelanggan( $this->POST( 'username' ), md5( $this->POST( 'password' ) ) );
			if ( $pengguna != NULL ) {

				$this->session->set_userdata([
					'id_pengguna'	=> $pengguna->id_pengguna,
					'id_role'		=> $pengguna->id_role,
					'username'		=> $pengguna->username
				]);

			} else {

				$this->flashmsg( 'Username atau password salah', 'danger' );

			}

			redirect( 'login' );
			exit;

		}

		$this->load->view('pelanggan/login');
		
	}

	public function admin() {

		if ( $this->POST( 'login' ) ) {

			$this->load->model( 'login_m' );
			$pengguna = $this->login_m->login_admin( $this->POST( 'username' ), md5( $this->POST( 'password' ) ) );
			if ( $pengguna != NULL ) {
				$this->session->set_userdata([
					'id_pengguna'	=> $pengguna->id_pengguna,
					'id_role'		=> $pengguna->id_role,
					'username'		=> $pengguna->username
				]);
			} else {

				$this->flashmsg( 'Username atau password salah', 'danger' );

			}

			redirect( 'login/admin' );
			exit;

		}

		$this->load->view('admin/login');

	}

}