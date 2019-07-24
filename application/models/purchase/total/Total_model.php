<?php

class Total_model extends CI_Model
{

    public function getTotal($total)
    {
        $total['totals'][] = array(
            'code'       => 'total',
            'title'      => $this->lang->line('text_total'),
            'value'      => max(0, $total['total']),
            'sort_order' => 5
        );
    }
}
