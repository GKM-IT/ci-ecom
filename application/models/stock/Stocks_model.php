<?php

class Stocks_model extends CI_Model
{

    private $table = 'stocks';
    private $table_view = 'stocks_view';
    private $column_search = array('product', 'location', 'price', 'quantity', 'type', 'status', 'updated_at');
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

        $this->db->set('product_id', $this->input->post('product_id'));
        $this->db->set('location_id', $this->input->post('location_id'));
        $this->db->set('price', $this->input->post('price'));
        $this->db->set('quantity', $this->input->post('quantity'));
        $this->db->set('type', $this->input->post('type'));
        $this->db->set('text', $this->input->post('text'));

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

    public function updateStock($id)
    {
        $this->db->select_sum('quantity', 'quantity');
        $this->db->from('stocks');
        $this->db->where('product_id', $id);
        $this->db->where('status', 1);
        $this->db->where('type', 'o');
        $this->db->group_by('product_id');
        $out = $this->db->get()->row_array();

        $this->db->select_sum('quantity', 'quantity');
        $this->db->from('stocks');
        $this->db->where('product_id', $id);
        $this->db->where('status', 1);
        $this->db->where('type', 'i');
        $this->db->group_by('product_id');
        $in = $this->db->get()->row_array();

        $quantity = $in['quantity'] - $out['quantity'];

        $this->db->set('stock', $quantity);
        $this->db->set('updated_at', $this->currectDatetime);
        $this->db->where('id', $id);
        $this->db->update('products');
    }

    public function getStock($data)
    {
        $this->db->from('stocks');
        $this->db->where('product_id', $data['product_id']);
        $this->db->where('reference', $data['reference_id']);
        $this->db->where('type', $data['type']);
        $this->db->where('reference_id', $data['reference_id']);
        $query = $this->db->get();
        return $query->row_array();
    }
}
