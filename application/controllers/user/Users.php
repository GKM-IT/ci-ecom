<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Users extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $filter = [];
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
                'status' => $object['status'],
                'status_text' => $object['status'] ? $this->lang->line('text_enable') : $this->lang->line('text_disable'),
                'created_at' => date($this->datetime_format, strtotime($object['created_at'])),
                'updated_at' => date($this->datetime_format, strtotime($object['updated_at'])),
            ];
        endif;
        return $result;
    }

    public function index_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $list = $this->users_model->getTables();

        $result = [];
        if ($list):
            foreach ($list as $object):
                $result[] = $this->getData($object);
            endforeach;
        else:
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->users_model->countAll();
        $this->data['recordsFiltered'] = $this->users_model->countFiltered();
        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function delete_get($id)
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $object = $this->users_model->deleteById($id);

        $result = [];
        if ($object):
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_delete'), $this->lang->line('text_user'));
            $result = $object;
        else:
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_delete'), $this->lang->line('text_user'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function detail_post()
    {
        $this->data = [];
        $this->data['data'] = [];

        $id = $this->post('id');

        $object = $this->users_model->getById($id);

        $result = [];
        if ($object):
            $result = $this->getData($object);
            $this->data['status'] = true;
            $this->data['message'] = $this->lang->line('text_loading');
        else:
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_not_found'), $this->lang->line('text_user'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function save_post()
    {
        $this->validation();

        $this->data = [];
        $this->data['data'] = [];

        $object = $this->users_model->save();

        $result = [];
        if ($object):
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_save'), $this->lang->line('text_user'));
            $result = $object;
        else:
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_save'), $this->lang->line('text_user'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function validation()
    {
        $this->validations = array(
            'group_id' => 'required',
            'name' => 'required',
            'email' => 'required|valid_email|callback_validate_email',
            'contact' => 'required|min_length[5]|max_length[10]|callback_validate_contact',
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

    public function validate_email($field_value)
    {
        if ($this->users_model->getByEmail($field_value)):
            $this->form_validation->set_message('validate_email', sprintf($this->lang->line('error_already_exists'), '{field}'));
            return false;
        else:
            return true;
        endif;
    }

    public function validate_contact($field_value)
    {
        if ($this->users_model->getByContact($field_value)):
            $this->form_validation->set_message('validate_contact', sprintf($this->lang->line('error_already_exists'), '{field}'));
            return false;
        else:
            return true;
        endif;
    }

}
