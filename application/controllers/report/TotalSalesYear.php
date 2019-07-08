<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class TotalSalesYear extends REST_Controller
{

    private $data = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('report/TotalSalesYear_model');
        $this->load->library('form_validation');
        $this->datetime_format = $this->settings_lib->config('config', 'default_date_time_format');
        $this->form_validation->set_error_delimiters('', '');
    }

    private function getData($object)
    {
        $result = [];
        if ($object) :
            $result = [
                'totalPrice' => $this->settings_lib->number_format($object['totalPrice']),
                'totalQty' => $this->settings_lib->number_format($object['totalQty']),
                'totalTax' => $this->settings_lib->number_format($object['totalTax']),
                'total' => $this->settings_lib->number_format($object['total']),
                'year' => $object['year'],
            ];
        endif;
        return $result;
    }

    public function index_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $list = $this->TotalSalesYear_model->getTables();

        $result = [];
        if ($list) :
            foreach ($list as $object) :
                $result[] = $this->getData($object);
            endforeach;
        else :
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->TotalSalesYear_model->countAll();
        $this->data['recordsFiltered'] = $this->TotalSalesYear_model->countFiltered();
        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }
}
