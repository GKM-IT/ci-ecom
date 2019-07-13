<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Carts extends REST_Controller
{

    private $data = [];
    private $error = [];
    private $filter = [];
    private $validations = [];
    private $datetime_format;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('order/carts_model');
        $this->load->model('product/products_model');
        $this->load->library('form_validation');
        $this->datetime_format = $this->settings_lib->config('config', 'default_date_time_format');
        $this->form_validation->set_error_delimiters('', '');
    }

    private function getData($object)
    {
        $total = 0;

        $result = [];
        if ($object) :

            $mrp = $this->settings_lib->number_format($object['mrp']);
            $totalMrp = $this->settings_lib->number_format($object['mrp'] * $object['quantity']);

            $price = $this->settings_lib->number_format($object['price']);
            $totalPrice = $this->settings_lib->number_format($object['price'] * $object['quantity']);

            if ($object['special_price']) :
                $specialPrice = $this->settings_lib->number_format($object['special_price']);
                $totalSpecialPrice = $this->settings_lib->number_format($object['special_price'] * $object['quantity']);
                $finalPrice = $specialPrice;
                $totalFinalPrice = $totalSpecialPrice;
            else :
                $specialPrice = $this->settings_lib->number_format(0);
                $totalSpecialPrice = $this->settings_lib->number_format(0);
                $finalPrice = $price;
                $totalFinalPrice = $totalPrice;
            endif;


            $totalTax = $this->products_model->getTotalTax($object['product_id'], $totalFinalPrice);
            $totalTaxDetails = $this->products_model->getTaxDetails($object['product_id'], $totalFinalPrice);

            $discount = $this->settings_lib->discount($totalPrice + $totalTax, $totalSpecialPrice + $totalTax);
            $totalDiscount = $this->settings_lib->totalDiscount($totalPrice + $totalTax, $totalSpecialPrice + $totalTax);

            $margin = $this->settings_lib->margin($totalMrp + $totalTax, $totalFinalPrice + $totalTax);
            $totalMargin = $this->settings_lib->totalMargin($totalMrp + $totalTax, $totalFinalPrice + $totalTax);

            $total = $totalFinalPrice + $totalTax;


            $result = [
                'id' => $object['id'],
                'token' => $object['token'],
                'product_id' => $object['product_id'],
                'product' => $object['product'],
                'product_image' => $object['product_image'] ? base_url($object['product_image']) : '',
                'quantity' => $this->settings_lib->number_format($object['quantity']),
                'mrp' => $mrp,
                'totalMrp' => $totalMrp,
                'price' => $price,
                'totalPrice' => $totalPrice,
                'specialPrice' => $specialPrice,
                'totalSpecialPrice' => $totalSpecialPrice,
                'finalPrice' => $finalPrice,
                'totalFinalPrice' => $totalFinalPrice,
                'margin' => $margin,
                'totalMargin' => $totalMargin,
                'discount' => $discount,
                'totalDiscount' => $totalDiscount,
                'totalTax' => $this->settings_lib->number_format($totalTax),
                'total' => $this->settings_lib->number_format($total),
                'taxDetails' => $totalTaxDetails,
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

        $totalMrp = 0;
        $totalPrice = 0;
        $totalFinalPrice = 0;
        $totalMargin = 0;
        $totalDiscount = 0;
        $totalTax = 0;
        $total = 0;

        $list = $this->carts_model->getTables();
        $qtyFilterData = [];
        if ($this->input->post('token')) :
            $qtyFilterData['token'] = $this->input->post('token');
        endif;

        $getCartTotalQty = $this->carts_model->getCartTotalQty($qtyFilterData);

        $result = [];
        if ($list) :
            foreach ($list as $object) :
                $result[] = $this->getData($object);
                foreach ($result as  $value) :
                    $totalMrp += $value['totalMrp'];
                    $totalPrice += $value['totalPrice'];
                    $totalFinalPrice += $value['totalFinalPrice'];
                    $totalMargin += $value['totalMargin'];
                    $totalTax += $value['totalTax'];
                    $totalDiscount += $value['totalDiscount'];
                    $total += $value['total'];
                endforeach;
            endforeach;
        else :
            $this->data['status'] = false;
        endif;

        $this->data['recordsTotal'] = $this->carts_model->countAll();
        $this->data['recordsFiltered'] = $this->carts_model->countFiltered();
        $this->data['total'] = $this->settings_lib->number_format($total);
        $this->data['total_quantity'] = $this->settings_lib->number_format($getCartTotalQty);
        $this->data['data'] = $result;

        $this->data['message'] = $this->lang->line('text_loading');


        $this->data['totals'] = [
            [
                'text' => 'Total Mrp',
                'value' => $this->settings_lib->number_format($totalMrp)
            ],
            [
                'text' => 'Total Price',
                'value' => $this->settings_lib->number_format($totalPrice)
            ],
            [
                'text' => 'Total Margin',
                'value' => $this->settings_lib->number_format($totalMargin)
            ],
            [
                'text' => 'Total Discount',
                'value' => $this->settings_lib->number_format($totalDiscount)
            ],
            [
                'text' => 'Total tax',
                'value' => $this->settings_lib->number_format($totalTax)
            ],
            [
                'text' => 'Sub Total',
                'value' => $this->settings_lib->number_format($totalFinalPrice)
            ],
            [
                'text' => 'Net Total',
                'value' => $this->settings_lib->number_format($total)
            ]
        ];

        $this->set_response($this->data, REST_Controller::HTTP_OK);
    }

    public function delete_get($id)
    {
        $this->data = [];
        $this->data['data'] = [];
        $this->data['status'] = true;

        $object = $this->carts_model->deleteById($id);

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
                $object = $this->carts_model->deleteById($id);
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

        $object = $this->carts_model->getById($id);

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

        $object = $this->carts_model->save();

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

    public function validate_product($field_value)
    {
        if (!$this->input->post('id') && $this->carts_model->checkProduct($field_value)) :
            $this->form_validation->set_message('validate_product', sprintf($this->lang->line('error_already_exists'), '{field}'));
            return false;
        else :
            return true;
        endif;
    }

    public function validation()
    {
        $this->validations = array(
            'token' => 'required',
            'product_id' => 'required|callback_validate_product',
            'price_type' => 'required',
            'quantity' => 'required',
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
            if (validation_errors()) {
                $this->data['message'] = validation_errors();
            } else {
                $this->data['message'] = $this->lang->line('error_validation');
            }
            $this->data['result'] = $this->error;
            echo json_encode($this->data);
            exit;
        endif;
    }
}
