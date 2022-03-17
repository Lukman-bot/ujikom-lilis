<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function__construct();
	{
		parent::__construct();
		$this->load->model('Mod_welcome', 'MW');
	}

	public function index()
	{
		$data = [
			'title' =>'Hotel LILIS',
			'datakamar' => $this->MW->getDataKamar()->result(),
			'datakamar' => $this->MW->getDataFasilitas()->result(),
		];
		$this->tempalte->load('Users/Tempalte', 'User/Dashboard', $data);
	}
}
