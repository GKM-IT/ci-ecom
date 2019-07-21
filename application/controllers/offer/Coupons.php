<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Coupons extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $filter = [];
    private $validations = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('offer/coupons_model');
        $this->load->library('form_validation');
        $this->datetime_format = $this->settings_lib->config('config', 'default_date_time_format');
        $this->form_validation->set_error_delimiters('', '');
    }

    private function getData($object)
    {
        $result = [];
        if ($object) :
            $result = [
                'id' => $object['id'],
                'code' => $object['code'],
                'customerGroupId' => $object['customer_group_id'],
                'customerGroup' => $object['customer_group'],
                'start' => $object['start_date'],
                'end' => $object['end_date'],
                'name' => $object['name'],
                'discountType' => $object['discount_type'],
                'discount' => $this->settings_lib->number_format($object['discount']),
                'usedLimit' => $object['used_limit'],
                'status' => $object['status'],
                'statusText' => $object['status'] ? $this->lang->line('text_enable') : $this->lang->line('text_disable'),
                'createdAt' => date($this->datetime_format, strtotime($object['created_at'])),
                'updatedAt' => date($this->datetime_format, strtotime($object['updated_at'])),
            ];
        endif;
        return $result;
    }

    public function index_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $list = $this->coupons_model->getTables();

        $result = [];
        if ($list) :
            foreach ($list as $object) :
                $result[] = $this->getData($object);
            endforeach;
        else :
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->coupons_model->countAll();
        $this->data['recordsFiltered'] = $this->coupons_model->countFiltered();
        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function delete_get($id)
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $object = $this->coupons_model->deleteById($id);

        $result = [];
        if ($object) :
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_delete'), $this->lang->line('text_country'));
            $result = $object;
        else :
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_delete'), $this->lang->line('text_country'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function delete_all_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $list = json2arr($this->post('list'));

        $result = [];
        if ($list) :
            foreach ($list as $id) :
                $object = $this->coupons_model->deleteById($id);
            endforeach;
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_delete'), $this->lang->line('text_country'));
        else :
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_delete'), $this->lang->line('text_country'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function detail_post()
    {
        $this->data = [];
        $this->data['data'] = [];

        $id = $this->post('id');

        $object = $this->coupons_model->getById($id);

        $result = [];
        if ($object) :
            $result = $this->getData($object);
            $this->data['status'] = true;
            $this->data['message'] = $this->lang->line('text_loading');
        else :
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_not_found'), $this->lang->line('text_country'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function save_post()
    {
        $this->validation();

        $this->data = [];
        $this->data['data'] = [];

        $object = $this->coupons_model->save();

        $result = [];
        if ($object) :
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_save'), $this->lang->line('text_country'));
            $result = $object;
        else :
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_save'), $this->lang->line('text_country'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function validate_code($field_value)
    {
        if ($this->coupons_model->checkCode($field_value)) :
            $this->form_validation->set_message('validate_code', sprintf($this->lang->line('error_already_exists'), '{field}'));
            return false;
        else :
            return true;
        endif;
    }

    public function validation()
    {
        $this->validations = array(
            'code' => 'required|callback_validate_code',
            'customer_group_id' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
            'name' => 'required',
            'discount_type' => 'required',
            'discount' => 'required',
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

        if ($this->form_validation->run() == false) :
            foreach ($this->validations as $key => $validation) :
                if (form_error($key, '', '')) :
                    $this->error[] = array(
                        'id' => $key,
                        'text' => form_error($key, '', ''),
                    );
                endif;
            endforeach;

            $this->data['status'] = false;
            $this->data['message'] = $this->lang->line('error_validation');
            $this->data['result'] = $this->error;
            echo json_encode($this->data);
            exit;
        endif;
    }

    public function applyValidation()
    {
        $this->validations = array(
            'code' => 'required',
            'customer_id' => 'required',
        );
        $this->_validation();
    }

    public function apply_post()
    {
        $this->applyValidation();
        $this->data = [];
        $this->data['data'] = [];

        $object = $this->coupons_model->checkCoupon($this->input->post('code'));

        if ($object) :
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_save'), $this->lang->line('text_coupon'));
            $this->session->set_userdata('coupon', $object['code']);
        else :
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_save'), $this->lang->line('text_coupon'));
        endif;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }
}
