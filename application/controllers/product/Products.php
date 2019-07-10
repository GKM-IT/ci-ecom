<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Products extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $filter = [];
    private $validations = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('product/products_model');
        $this->load->library('form_validation');
        $this->datetime_format = $this->settings_lib->config('config', 'default_date_time_format');
        $this->form_validation->set_error_delimiters('', '');
    }

    private function getData($object)
    {
        $result = [];
        if ($object) :
            if ($object['special_price']) :
                $tax = $this->products_model->getTotalTax($object['id'], $object['special_price']);
                $special_price = $this->settings_lib->number_format($object['special_price']);
                $final_price = $this->settings_lib->number_format($object['special_price'] + $tax);
                $discount = $this->settings_lib->discount($object['price'] + $tax, $object['special_price'] + $tax);

            else :
                $discount = '';
                $special_price = false;
                $tax = $this->products_model->getTotalTax($object['id'], $object['price']);
                $final_price = $this->settings_lib->number_format($object['price'] + $tax);
            endif;
            $margin = $this->settings_lib->margin($object['mrp'], $object['price']);
            $relatedProducts = $this->products_model->getRelatedProducts($object['id']);

            $result = [
                'id' => $object['id'],
                'type_id' => $object['type_id'],
                'type' => $object['type'],
                'manufacture_id' => $object['manufacture_id'],
                'manufacture' => $object['manufacture'],
                'code' => $object['code'],
                'model' => $object['model'],
                'sku' => $object['sku'],
                'name' => $object['name'],
                'price_type' => $object['price_type'],
                'mrp' => $this->settings_lib->number_format($object['mrp']),
                'price' => $this->settings_lib->number_format($object['price']),
                'margin' => $margin,
                'special_price' => $special_price,
                'tax' => $this->settings_lib->number_format($tax),
                'final_price' => $final_price,
                'discount' => $discount,
                'image' => base_url($object['image']),
                'image_thumb' => base_url($object['image']),
                'description' => $object['description'],
                'text' => $object['text'],
                'tax_class_id' => $object['tax_class_id'],
                'tax_class' => $object['tax_class'],
                'length_class_id' => $object['length_class_id'],
                'length_class' => $object['length_class'],
                'length_unit' => $object['length_unit'],
                'length' => $this->settings_lib->number_format($object['length']),
                'width' => $this->settings_lib->number_format($object['width']),
                'height' => $this->settings_lib->number_format($object['height']),
                'weight_class_id' => $object['weight_class_id'],
                'weight_class' => $object['weight_class'],
                'weight_unit' => $object['weight_unit'],
                'weight' => $this->settings_lib->number_format($object['weight']),
                'viewed' => $object['viewed'],
                'minimum' => $object['minimum'],
                'shipping' => $object['shipping'],
                'inventory' => $object['inventory'],
                'related_products' => $relatedProducts,
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

        $list = $this->products_model->getTables();

        $result = [];
        if ($list) :
            foreach ($list as $object) :
                $result[] = $this->getData($object);
            endforeach;
        else :
            $this->data['status'] = false;
        endif;


        $sort_order = array();

        if ($this->input->post('sortByPrice')) :
            if ($this->input->post('sortByPrice') == 'asc') :
                $sort = SORT_ASC;
            else :
                $sort = SORT_DESC;
            endif;

            foreach ($result as $key => $value) :
                $sort_order[$key] = $value['final_price'];
            endforeach;

            array_multisort($sort_order, $sort, $result);
        endif;



        $this->data['recordsTotal'] = $this->products_model->countAll();
        $this->data['recordsFiltered'] = $this->products_model->countFiltered();
        $this->data['data'] = $result;
        $this->data['message'] = $this->lang->line('text_loading');

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function delete_get($id)
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $object = $this->products_model->deleteById($id);

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
                $object = $this->products_model->deleteById($id);
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

        $object = $this->products_model->getById($id);

        $result = [];
        if ($object) :
            $categories = $this->products_model->getCategories($id);
            $attributes = $this->products_model->getAttributes($id);
            $result = $this->getData($object);
            $result['categories'] = $categories;
            $result['attributes'] = $attributes;
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

        $object = $this->products_model->save();

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
            'code' => 'required',
            'model' => 'required',
            'sku' => 'required',
            'price' => 'required',
            'tax_class_id' => 'required',
            'length_class_id' => 'required',
            'weight_class_id' => 'required',
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

    public function image_upload_post()
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;
        $path = 'upload/products/';
        $config['upload_path'] = $path;
        $config['allowed_types'] = 'gif|jpg|jpeg|png';
        $config['file_name'] = 'product';
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
