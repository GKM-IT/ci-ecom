<?php

class Coupon_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('offer/coupons_model');
    }

    public function getTotal($total)
    {
        // print_r($total);
        // exit;
        if ($this->session->userdata('coupon')) :
            $sub_total = 0;
            $coupon = $this->coupons_model->checkCoupon($this->session->userdata('coupon'));
            if ($coupon) :
                if ($coupon['discount_type'] == 'P') :
                    $sub_total = ($total['total'] * $coupon['discount']) / 100;
                else :
                    $sub_total = $coupon['discount'];
                endif;


                $total['totals'][] = array(
                    'code'       => 'coupon',
                    'title'      => $this->lang->line('text_coupon') . ' (' . $coupon['name'] . ')',
                    'value'      => -$sub_total,
                    'sort_order' => 3
                );
                $total['total'] -= $sub_total;
            endif;
        endif;
    }
}
