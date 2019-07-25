<?php

class Banners_model extends CI_Model
{

    private $table = 'banners';
    private $table_view = 'banners_view';
    private $column_search = array('type', 'name', 'updated_at');    
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

        $this->db->set('type_id', $this->input->post('type_id'));
        $this->db->set('reference', $this->input->post('reference'));
        $this->db->set('reference_id', $this->input->post('reference_id'));
        $this->db->set('name', $this->input->post('name'));
        
        if($this->input->post('status')):
            $this->db->set('status', $this->input->post('status'));
        else:
            $this->db->set('status', 1);
        endif;
        

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

        $this->db->where('banner_id', $id);
        $this->db->delete('banner_images');

        if ($this->input->post('images')):
            $images = json2arr($this->input->post('images'));
            if ($images):
                foreach ($images as $image):
                    $this->db->set('banner_id', $id);
                    // $this->db->set('type', $image['type']);
                    // $this->db->set('type_id', $image['type_id']);
                    $this->db->set('name', $image['name']);
                    $this->db->set('image', $image['image']);
                    $this->db->set('link', $image['link']);
                    $this->db->set('sort_order', $image['sort_order']);
                    $this->db->insert('banner_images');
                endforeach;
            endif;
        endif;

        if ($this->db->trans_status() === false):
            $this->db->trans_rollback();
            return false;
        else:
            $this->db->trans_commit();
            return true;
        endif;
    }

    public function getImages($id)
    {
        $this->db->from('banner_images');
        $this->db->where('banner_id', $id);
        $query = $this->db->get();
        return $query->result_array();
    }

}
