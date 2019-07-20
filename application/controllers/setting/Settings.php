<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Settings extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $filter = [];
    private $validations = [];

    public function __construct()
    {
        parent::__construct();
        $this->load->model('setting/settings_model');
        $this->load->library('form_validation');

        $this->form_validation->set_error_delimiters('', '');
    }

    public function index_get()
    {
        $result['defaultName'] = $this->settings_lib->config('config', 'default_name');
        $result['defaultEmail'] = $this->settings_lib->config('config', 'default_email');
        $result['defaultCountry'] = $this->settings_lib->config('config', 'default_country');
        $result['defaultZone'] = $this->settings_lib->config('config', 'default_zone');
        $result['defaultCity'] = $this->settings_lib->config('config', 'default_city');
        $result['defaultAddress'] = $this->settings_lib->config('config', 'default_address');
        $result['defaultDateFormat'] = $this->settings_lib->config('config', 'default_date_format');
        $result['defaultDateTimeFormat'] = $this->settings_lib->config('config', 'default_date_time_format');
        $result['defaultDecimalPlace'] = $this->settings_lib->config('config', 'default_decimal_place');
        $result['defaultOrderType'] = $this->settings_lib->config('config', 'default_order_type');
        $result['defaultPurchaseType'] = $this->settings_lib->config('config', 'default_purchase_type');
        $result['defaultLengthClass'] = $this->settings_lib->config('config', 'default_length_class');
        $result['defaultWeightClass'] = $this->settings_lib->config('config', 'default_weight_class');
        $result['defaultCustomerGroup'] = $this->settings_lib->config('config', 'default_customer_group');
        $result['defaultEmployeeGroup'] = $this->settings_lib->config('config', 'default_employee_group');
        $result['defaultUserGroup'] = $this->settings_lib->config('config', 'default_user_group');
        $result['defaultLocation'] = $this->settings_lib->config('config', 'default_location');

        if ($result) {
            $this->data['status'] = TRUE;
            $this->data['data'] = $result;
            $this->data['message'] = 'modified successfully';
        } else {
            $this->data['data'] = [];
            $this->data['status'] = FALSE;
            $this->data['message'] = 'modified failed!';
        }
        $this->response($this->data);
    }

    public function index_post()
    {
        $this->validation();
        $result = $this->settings_model->save();
        if ($result) {
            $this->data['status'] = TRUE;
            $this->data['message'] = 'modified successfully';
        } else {
            $this->data['status'] = FALSE;
            $this->data['message'] = 'modified failed!';
        }
        $this->response($this->data);
    }

    public function validation()
    {
        $this->validations = array(
            'default_name' => 'required',
            'default_email' => 'required|valid_email'
        );
        $this->_validation();
    }

    private function _validation()
    {
        $this->data = [];
        foreach ($this->validations as $key => $validation) :
            $field = '';
            if ($this->lang->line('text_' . $key)) :
                $field = $this->lang->line('text_' . $key);
            else :
                $field = humanize($key);
            endif;
            $this->form_validation->set_rules($key, $field, $validation);
        endforeach;

        if ($this->form_validation->run() == FALSE) :
            foreach ($this->validations as $key => $validation) :
                if (form_error($key, '', '')) :
                    $this->error[] = array(
                        'id' => $key,
                        'text' => form_error($key, '', '')
                    );
                endif;
            endforeach;

            $this->data['status'] = FALSE;
            $this->data['message'] = $this->lang->line('error_validation');
            $this->data['result'] = $this->error;
            echo json_encode($this->data);
            exit;
        endif;
    }
}
