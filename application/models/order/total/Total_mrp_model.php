<?php

class Total_mrp_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('order/carts_model');
    }

    public function getTotal($total)
    {
        $sub_total = $this->carts_model->getTotalMrp();

        $total['totals'][] = array(
            'code'       => 'total_mrp',
            'title'      => $this->lang->line('text_total_mrp'),
            'value'      => $sub_total,
            'sort_order' => 0
        );        
    }
}
