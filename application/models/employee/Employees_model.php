<?php

class Employees_model extends CI_Model
{

    private $table = 'employees';
    private $table_view = 'employees_view';
    private $column_search = array('group_name', 'location', 'name', 'email', 'contact', 'updated_at');
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

    public function getByEmail($email)
    {
        $this->db->from($this->table_view);
        $this->db->where('email', $email);
        if ($this->input->post('id')):
            $this->db->where('id !=', $this->input->post('id'));
        endif;
        $query = $this->db->get();
        return $query->row_array();
    }

    public function getByContact($contact)
    {
        $this->db->from($this->table_view);
        $this->db->where('contact', $contact);
        if ($this->input->post('id')):
            $this->db->where('id !=', $this->input->post('id'));
        endif;
        $query = $this->db->get();
        return $query->row_array();
    }

    public function save()
    {
        $this->db->trans_start();
        $this->db->set('location_id', $this->input->post('location_id'));
        $this->db->set('group_id', $this->input->post('group_id'));
        $this->db->set('name', $this->input->post('name'));
        $this->db->set('email', $this->input->post('email'));
        $this->db->set('contact', $this->input->post('contact'));
        $this->db->set('password', md5($this->input->post('password')));
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

    public function checkUsername($username)
    {
        $this->db->from($this->table_view);
        $this->db->group_start();
        $this->db->where('email', $username);
        $this->db->or_where('contact', $username);
        $this->db->group_end();
        $query = $this->db->get();
        return $query->row_array();
    }

    public function login()
    {
        $this->db->from($this->table_view);
        $this->db->group_start();
        $this->db->where('email', $this->input->post('username'));
        $this->db->or_where('contact', $this->input->post('username'));
        $this->db->group_end();
        $this->db->where('password', md5($this->input->post('password')));
        $query = $this->db->get();
        return $query->row_array();
    }

}
