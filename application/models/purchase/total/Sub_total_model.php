<?php

class Sub_total_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('purchase/purchase_carts_model');
    }

    public function getTotal($total)
    {
        $sub_total = $this->purchase_carts_model->getSubTotal();

        $total['totals'][] = array(
            'code'       => 'sub_total',
            'title'      => $this->lang->line('text_sub_total'),
            'value'      => $sub_total,
            'sort_order' => 0
        );

        $total['total'] += $sub_total;
    }
}
