<?php

class Zones_model extends CI_Model
{

    private $table = 'zones';
    private $column_search = array('name', 'code', 'updated_at');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
    }

    private function _getTablesQuery()
    {
        $this->db->from($this->table);
        if ($this->input->post('country_id')):
            $this->db->where('country_id', $this->input->post('country_id'));
        endif;
        if ($this->input->post('name')):
            $this->db->where('name', $this->input->post('name'));
        endif;
        $status = 1;
        if ($this->input->post('status') && $this->input->post('status') == 'false'):
            $status = 0;
        endif;
        $this->db->where('status', $status);
        $this->_getSearch();
        $this->_getSort();
    }

    private function _getSearch()
    {
        $i = 0;
        foreach ($this->column_search as $item):
            if ($this->input->post('search')):
                if ($i === 0):
                    $this->db->group_start();
                    $this->db->like($item, $this->input->post('search'));
                else:
                    $this->db->or_like($item, $this->input->post('search'));
                endif;
                if (count($this->column_search) - 1 == $i):
                    $this->db->group_end();
                endif;
            endif;
            $i++;
        endforeach;
    }

    private function _getSort()
    {
        if ($this->input->post('sort_by')):
            $this->db->order_by($this->input->post('sort_by'), $this->input->post('sort_dir'));
        else:
            $this->db->order_by('updated_at', 'desc');
        endif;
    }

    public function getTables()
    {
        $this->_getTablesQuery();
        if ($this->input->post('length')):
            if ($this->input->post('length') != -1):
                if ($this->input->post('start')):
                    $start = $this->input->post('start');
                else:
                    $start = 0;
                endif;
                $this->db->limit($this->input->post('length'), $start);
            endif;
        endif;
        $query = $this->db->get();
//        print_r($this->db->last_query());
        //        exit;
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
        $this->db->from($this->table);
        $this->db->where('id', $id);
        $query = $this->db->get();
        return $query->row_array();
    }

    public function deleteById($id)
    {
        $this->db->trans_start();
        $this->db->where('id', $id);
        $this->db->delete($this->table);
        $this->db->trans_complete();
        if ($this->db->trans_status() === false):
            $this->db->trans_rollback();
            return false;
        else:
            $this->db->trans_commit();
            return true;
        endif;
    }

    public function save()
    {
        $this->db->trans_start();
        $this->db->set('country_id', $this->input->post('country_id'));
        $this->db->set('name', $this->input->post('name'));
        $this->db->set('code', $this->input->post('code'));
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
