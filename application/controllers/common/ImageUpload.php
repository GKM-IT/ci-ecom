<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class ImageUpload extends REST_Controller
{

    private $data = [];
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }


    public function index_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;
        $filepath = $this->input->post('filepath');
        $filename = $this->input->post('filename');
        $path = 'upload/' . $filepath . '/';
        $config['upload_path'] = $path;
        $config['allowed_types'] = 'gif|jpg|jpeg|png';
        $config['file_name'] = $filename;
        // $config['max_size'] = 100;
        // $config['max_width'] = 1024;
        // $config['max_height'] = 768;

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('userfile')) :
            $this->data['status'] = false;
            $this->data['error'] = $this->upload->display_errors();
        else :
            $fileData = $this->upload->data();

            if ($fileData['file_name']) :
                $filename = $fileData['file_name'];
            else :
                $filename = '';
            endif;
            $data = [];
            $data['full_path'] = base_url($path . $filename);
            $data['base_path'] = $path . $filename;
            $this->data['data'] = $data;
        endif;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }
}
