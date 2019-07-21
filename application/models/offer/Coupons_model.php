<?php

class Coupons_model extends CI_Model
{

    private $table = 'coupons';
    private $table_view = 'coupons_view';
    private $column_search = array('customer_group', 'start_date', 'end_date', 'discount_type', 'discount', 'used_limit', 'name', 'status', 'updated_at');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
        $this->load->model('customer/customers_model');
        $this->query_lib->table = $this->table;
        $this->query_lib->table_view = $this->table_view;
        $this->query_lib->column_search = $this->column_search;
    }

    private function _getTablesQuery()
    {
        $this->db->from($this->table_view);
        $this->query_lib->where();
        $this->query_lib->like();
        $this->query_lib->getSearch();
        $this->query_lib->getSort();
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
        $this->db->from($this->table_view);
        return $this->db->count_all_results();
    }

    public function getById($id)
    {
        $this->db->from($this->table_view);
        $this->db->where('id', $id);
        $query = $this->db->get();
        return $query->row_array();
    }

    public function checkCode($code)
    {
        $this->db->from($this->table_view);
        if ($this->input->post('id')) :
            $this->db->where('id !=', $this->input->post('id'));
        endif;
        $this->db->where('code', $code);
        $query = $this->db->get();
        return $query->row_array();
    }

    public function deleteById($id)
    {
        $this->db->trans_start();
        $this->db->where('id', $id);
        $this->db->delete($this->table);
        $this->db->trans_complete();
        if ($this->db->trans_status() === false) :
            $this->db->trans_rollback();
            return false;
        else :
            $this->db->trans_commit();
            return true;
        endif;
    }

    public function save()
    {
        $this->db->trans_start();

        $this->db->set('code', $this->input->post('code'));
        $this->db->set('customer_group_id', $this->input->post('customer_group_id'));
        $this->db->set('start_date', $this->input->post('start_date'));
        $this->db->set('end_date', $this->input->post('end_date'));
        $this->db->set('name', $this->input->post('name'));
        $this->db->set('discount_type', $this->input->post('discount_type'));
        $this->db->set('discount', $this->input->post('discount'));
        $this->db->set('used_limit', $this->input->post('used_limit'));

        if ($this->input->post('status')) :
            $this->db->set('status', $this->input->post('status'));
        else :
            $this->db->set('status', 1);
        endif;

        if ($this->input->post('id')) :
            $this->db->set('updated_at', $this->currectDatetime);
            $id = $this->input->post('id');
            $this->db->where('id', $id);
            $this->db->update($this->table);
        else :
            $this->db->set('created_at', $this->currectDatetime);
            $this->db->insert($this->table);
            $id = $this->db->insert_id();
        endif;

        if ($this->db->trans_status() === false) :
            $this->db->trans_rollback();
            return false;
        else :
            $this->db->trans_commit();
            return true;
        endif;
    }


    private function getCustomer()
    { }

    public function checkCoupon($code)
    {
        $customer = [];
        if ($this->input->post('customer_id')) :
            $customer = $this->customers_model->getById($this->input->post('customer_id'));
        endif;

        $this->db->from($this->table_view);
        if ($customer['group_id']) :
            $this->db->where('customer_group_id', $customer['group_id']);
        endif;
        $this->db->where('code', $code);
        $this->db->where('DATE(start_date) <= DATE(now())');
        $this->db->where('DATE(end_date) >= DATE(now())');
        $query = $this->db->get()->row_array();
        // print_r($this->db->last_query());
        // exit;
        return $query;
    }
}
