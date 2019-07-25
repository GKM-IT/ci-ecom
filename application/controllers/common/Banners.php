<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Banners extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $filter = [];
    private $validations = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('common/banners_model');
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
                'type_id' => $object['type_id'],
                'type' => $object['type'],
                'name' => $object['name'],
                'reference' => $object['reference'],
                'reference_id' => $object['reference_id'],
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

        $list = $this->banners_model->getTables();

        $result = [];
        if ($list):
            foreach ($list as $object):
                $result[] = $this->getData($object);
            endforeach;
        else:
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->banners_model->countAll();
        $this->data['recordsFiltered'] = $this->banners_model->countFiltered();
        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function delete_get($id)
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $object = $this->banners_model->deleteById($id);

        $result = [];
        if ($object):
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_delete'), $this->lang->line('text_country'));
            $result = $object;
        else:
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
        if ($list):
            foreach ($list as $id):
                $object = $this->banners_model->deleteById($id);
            endforeach;
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_delete'), $this->lang->line('text_country'));
        else:
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

        $object = $this->banners_model->getById($id);

        $result = [];
        if ($object):
            $imagesData = [];
            $images = $this->banners_model->getImages($object['id']);
            if ($images):
                foreach ($images as $key => $image):
                    $imagesData[] = [
                        'type' => $image['type'],
                        'type_id' => $image['type_id'],
                        'name' => $image['name'],
                        'image' => $image['image'],
                        'image_thumb' => base_url($image['image']),
                        'link' => $image['link'],
                        'sort_order' => $image['sort_order'],
                    ];
                endforeach;
            endif;

            $result = $this->getData($object);
            $result['images'] = $imagesData;

            $this->data['status'] = true;
            $this->data['message'] = $this->lang->line('text_loading');
        else:
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

        $object = $this->banners_model->save();

        $result = [];
        if ($object):
            $this->data['status'] = true;
            $this->data['message'] = sprintf($this->lang->line('success_save'), $this->lang->line('text_country'));
            $result = $object;
        else:
            $this->data['status'] = false;
            $this->data['error'] = sprintf($this->lang->line('error_save'), $this->lang->line('text_country'));
        endif;

        $this->data['data'] = $result;

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function validation()
    {
        $this->validations = array(
            'type_id' => 'required',
            'name' => 'required',            
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

    public function image_upload_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;
        $path = 'upload/banners/';
        $config['upload_path'] = $path;
        $config['allowed_types'] = 'gif|jpg|jpeg|png';
        $config['file_name'] = 'banner';
        // $config['max_size'] = 100;
        // $config['max_width'] = 1024;
        // $config['max_height'] = 768;

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('userfile')):
            $this->data['status'] = false;
            $this->data['error'] = $this->upload->display_errors();
        else:
            $fileData = $this->upload->data();

            if ($fileData['file_name']):
                $filename = $fileData['file_name'];
            else:
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
