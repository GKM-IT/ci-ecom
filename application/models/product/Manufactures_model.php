<?php

class Manufactures_model extends CI_Model
{

    private $table = 'manufactures';
    private $table_view = 'manufactures';
    private $column_search = array('name', 'updated_at');
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

    public function getMobileMenu()
    {
        $this->db->from($this->table_view);
        $this->db->where('mobile_menu', true);
        $this->db->order_by('sort_order', 'asc');
        $query = $this->db->get();
        return $query->result_array();
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

        $this->db->set('name', $this->input->post('name'));

        if ($this->input->post('mobile_menu') && $this->input->post('mobile_menu') == 'true') :
            $this->db->set('mobile_menu', true);
        else :
            $this->db->set('mobile_menu', false);
        endif;
        if ($this->input->post('top') && $this->input->post('top') == 'true') :
            $this->db->set('top', true);
        else :
            $this->db->set('top', false);
        endif;
        if ($this->input->post('bottom') && $this->input->post('bottom') == 'true') :
            $this->db->set('bottom', true);
        else :
            $this->db->set('bottom', false);
        endif;


        if ($this->input->post('image')) :
            $this->db->set('image', $this->input->post('image'));
        endif;
        if ($this->input->post('sort_order')) :
            $this->db->set('sort_order', $this->input->post('sort_order'));
        endif;

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
}
