<?php

class Total_special_price_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('order/carts_model');
    }

    public function getTotal($total)
    {
        $sub_total = $this->carts_model->getTotalSpecialPrice();

        $total['totals'][] = array(
            'code'       => 'total_special_price',
            'title'      => $this->lang->line('text_total_special'),
            'value'      => $sub_total,
            'sort_order' => 0
        );        
    }
}
