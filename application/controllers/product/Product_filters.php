<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Product_filters extends REST_Controller
{

    private $data = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();        
        $this->load->model('product/categories_model');
        $this->load->model('product/manufactures_model');
        $this->load->library('form_validation');
        $this->datetime_format = $this->settings_lib->config('config', 'default_date_time_format');
        $this->form_validation->set_error_delimiters('', '');
    }

    public function index_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $categories = $this->categories_model->getTables();
        $manufactures = $this->manufactures_model->getTables();

        $categoriesData = [];
        $manufacturesData = [];
        $result = [];
        if ($categories) :
            foreach ($categories as $object) :
                $categoriesData[] = [
                    'id' => $object['id'],
                    'parent_id' => $object['parent_id'],
                    'name' => $object['name'],
                ];
            endforeach;
        endif;
        if ($manufactures) :
            foreach ($manufactures as $object) :
                $manufacturesData[] = [
                    'id' => $object['id'],                    
                    'name' => $object['name'],
                ];
            endforeach;
        endif;

        $result[] = [
            'name' => 'categories',
            'children' => $categoriesData,
        ];
        $result[] = [
            'name' => 'manufactures',
            'children' => $manufacturesData,
        ];

        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }
}
