<?php

class TotalSalesYear_model extends CI_Model
{
    private $table = 'totalsalesyear';
    private $column_search = array('totalPrice', 'totalQty', 'totalTax', 'total', 'year');

    public function __construct()
    {
        parent::__construct();
        $this->query_lib->column_search = $this->column_search;
    }

    private function _getTablesQuery()
    {
        $this->db->from($this->table);
        $this->query_lib->where();
        $this->query_lib->like();
        $this->query_lib->getSearch();


        if ($this->input->post('sort_by')) :
            $this->db->order_by($this->input->post('sort_by'), $this->input->post('sort_dir'));
        endif;
    }

    public function getTables()
    {
        $this->_getTablesQuery();
        $this->query_lib->getPaginate();
        $query = $this->db->get();
        // print_r($this->db->last_query());
        // exit;
        return $query->result_array();
    }

    public function countFiltered()
    {
        $this->_getTablesQuery();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function countAll()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }
}
