<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Types extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $filter = [];
    private $validations = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('common/types_model');
        $this->load->model('product/categories_model');
        $this->load->model('product/manufactures_model');
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
                'name' => $object['name'],
                'image' => $object['image'],
                'sort_order' => $object['sort_order'],
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

        $list = $this->types_model->getTables();

        $result = [];
        if ($list) :
            foreach ($list as $object) :
                $result[] = $this->getData($object);
            endforeach;
        else :
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->types_model->countAll();
        $this->data['recordsFiltered'] = $this->types_model->countFiltered();
        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function delete_get($id)
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $object = $this->types_model->deleteById($id);

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

    public function deleteAll_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $list = json2arr($this->post('list'));

        $result = [];
        if ($list) :
            foreach ($list as $id) :
                $object = $this->types_model->deleteById($id);
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

        $object = $this->types_model->getById($id);

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

        $object = $this->types_model->save();

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

    public function validation()
    {
        $this->validations = array(
            'name' => 'required',
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

    public function menu_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $list = $this->types_model->getTables();

        $result = [];
        if ($list) :
            foreach ($list as $object) :
                $categoriesData = [];
                $categories = $this->categories_model->getByType($object['id']);
                if ($categories) :
                    foreach ($categories as $value) :
                        $categoriesData[] = [
                            'id' => $value['id'],
                            'name' => $value['name'],
                            'image' => $value['image'],
                            'sort_order' => $value['sort_order'],
                        ];
                    endforeach;
                endif;

                $result[] = [
                    'id' => $object['id'],
                    'name' => $object['name'],
                    'image' => $object['image'],
                    'sort_order' => $object['sort_order'],
                    'categories' => $categoriesData,
                ];
            endforeach;
        else :
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->types_model->countAll();
        $this->data['recordsFiltered'] = $this->types_model->countFiltered();
        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }


    public function mobile_menu_post()
    {
        $this->data = [];
        $this->data['types'] = [];
        $this->data['manufactures'] = [];
        $this->data['status'] = true;

        $list = $this->types_model->getTables();
        $manufactures = $this->manufactures_model->getMobileMenu();
        $manufactureResult = [];
        if ($manufactures) :
            foreach ($manufactures as $key => $manufacture) :
                $manufactureResult[] = [
                    'id' => $manufacture['id'],
                    'name' => $manufacture['name'],
                    'image' => base_url($manufacture['image']),
                ];;
            endforeach;
        endif;

        $result = [];
        if ($list) :
            foreach ($list as $object) :
                $categoriesData = [];
                $categories = $this->categories_model->getByMobileMenu($object['id']);
                if ($categories) :
                    foreach ($categories as $value) :
                        $categoriesData[] = [
                            'id' => $value['id'],
                            'name' => $value['name'],
                            'image' => base_url($value['image']),
                        ];
                    endforeach;
                endif;

                $result[] = [
                    'id' => $object['id'],
                    'name' => $object['name'],
                    'image' => base_url($value['image']),
                    'categories' => $categoriesData,
                ];
            endforeach;
        else :
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->types_model->countAll();
        $this->data['recordsFiltered'] = $this->types_model->countFiltered();
        $this->data['types'] = $result;
        $this->data['manufactures'] = $manufactureResult;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }
}
