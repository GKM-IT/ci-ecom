<?php

class Coupon_model extends CI_Model
{

    public function getTotal($total)
    {
        $sub_total = 22.14;
        $total['totals'][] = array(
            'code'       => 'coupon',
            'title'      => $this->lang->line('text_coupon'),
            'value'      => -$sub_total,
            'sort_order' => 3
        );
        $total['total'] -= $sub_total;
    }
}
