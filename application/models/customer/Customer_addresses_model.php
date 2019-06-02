<?php

class Customer_addresses_model extends CI_Model
{

    private $table = 'customer_addresses';
    private $table_view = 'customer_addresses_view';
    private $column_search = array('name', 'contact', 'updated_at');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
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
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    public function getById($id)
    {
        return $this->query_lib->getById($id);
    }

    public function deleteById($id)
    {
        return $this->query_lib->deleteById($id);
    }

    public function save()
    {
        $this->db->trans_start();
        $this->db->set('customer_id', $this->input->post('customer_id'));
        $this->db->set('name', $this->input->post('name'));
        $this->db->set('contact', $this->input->post('contact'));
        $this->db->set('country_id', $this->input->post('country_id'));
        $this->db->set('zone_id', $this->input->post('zone_id'));
        $this->db->set('city_id', $this->input->post('city_id'));
        $this->db->set('postcode', $this->input->post('postcode'));
        $this->db->set('address', $this->input->post('address'));
        $this->db->set('status', $this->input->post('status'));

        if ($this->input->post('id')):
            $this->db->set('updated_at', $this->currectDatetime);
            $id = $this->input->post('id');
            $this->db->where('id', $id);
            $this->db->update($this->table);
        else:
            $this->db->set('created_at', $this->currectDatetime);
            $this->db->insert($this->table);
            $id = $this->db->insert_id();
        endif;

        if ($this->db->trans_status() === false):
            $this->db->trans_rollback();
            return false;
        else:
            $this->db->trans_commit();
            return true;
        endif;
    }

}
