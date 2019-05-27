<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class User_login extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $validations = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('user/users_model');
        $this->load->library('form_validation');
        $this->datetime_format = $this->settings_lib->config('config', 'default_date_time_format');
        $this->form_validation->set_error_delimiters('', '');
    }

    private function getData($object)
    {
        $result = [];
        if ($object):
            $result = [
                'id' => $object['id'],
                'name' => $object['name'],
                'email' => $object['email'],
                'contact' => $object['contact'],
                'token' => $object['token'],
                'status' => $object['status'] ? $this->lang->line('text_enable') : $this->lang->line('text_disable'),
                'created_at' => date($this->datetime_format, strtotime($object['created_at'])),
                'updated_at' => date($this->datetime_format, strtotime($object['updated_at'])),
            ];
        endif;
        return $result;
    }

    public function index_post()
    {
        $this->validation();

        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $object = $this->users_model->login();

        $result = [];
        if ($object):
            $token = $this->users_model->setToken($object['id']);
            $object['token'] = $token;
            $this->data['message'] = sprintf($this->lang->line('success_login'), $this->lang->line('text_user'));
            $result = $this->getData($object);
        else:
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_login'), $this->lang->line('text_user'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function validate_username($field_value)
    {
        if (!$this->users_model->checkUsername($field_value) && $field_value):
            $this->form_validation->set_message('validate_username', sprintf($this->lang->line('error_not_found'), '{field}'));
            return false;
        else:
            return true;
        endif;
    }

    private function validation()
    {
        $this->validations = array(
            'username' => 'required|callback_validate_username',
            'password' => 'required',
        );
        $this->_validation();
    }

    private function _validation()
    {
        $this->data = [];
        foreach ($this->validations as $key => $validation):
            $field = '';
            if ($this->lang->line('text_' . $key)):
                $field = $this->lang->line('text_' . $key);
            else:
                $field = humanize($key);
            endif;
            $this->form_validation->set_rules($key, $field, $validation);
        endforeach;

        if ($this->form_validation->run() == false):
            foreach ($this->validations as $key => $validation):
                if (form_error($key, '', '')):
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

}
