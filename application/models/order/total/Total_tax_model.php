<?php

class Total_tax_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('order/carts_model');
    }

    public function getTotal($total)
    {
        $sub_total = $this->carts_model->getTaxTotal();

        $total['totals'][] = array(
            'code'       => 'total_tax',
            'title'      => $this->lang->line('text_total_tax'),
            'value'      => $sub_total,
            'sort_order' => 0
        );

        $total['total'] += $sub_total;
    }
}
