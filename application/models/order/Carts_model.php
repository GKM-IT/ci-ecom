<?php

class Carts_model extends CI_Model
{

    private $table = 'carts';
    private $table_view = 'carts_view';
    private $column_search = array('token', 'name', 'updated_at');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
        $this->query_lib->table = $this->table;
        $this->query_lib->table_view = $this->table_view;
        $this->query_lib->column_search = $this->column_search;
    }

    private function getSpecialPrice()
    {
        $this->query_lib->getSpecialPrice();
        $this->query_lib->table_view = $this->table_view;
    }

    private function _getTablesQuery()
    {

        $this->getSpecialPrice();
        $this->db->from($this->table_view);
        if ($this->input->post('token')):
            $this->db->where('token', $this->input->post('token'));
        endif;
        if ($this->input->post('customer_id')):
            $this->db->where('customer_id', $this->input->post('customer_id'));
        endif;
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
        $this->getSpecialPrice();
        $query = $this->query_lib->getById($id);
        return $query;
    }

    public function deleteById($id)
    {
        return $this->query_lib->deleteById($id);
    }

    public function getProducts($data)
    {
        $this->db->select('t.*');
        $this->db->select('p.price as price');
        $this->db->select('p.name as product_name');
        $this->db->select('p.image as product_image');
        $this->db->from('carts t');
        $this->db->join('products p', 'p.id=t.product_id');
        $this->db->where('t.token', $data['token']);
        $this->db->where('t.customer_id', $data['customer_id']);
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getCartTotalQty($data)
    {
        $quantity = 0;
        $this->db->select_sum('quantity');
        $this->db->from($this->table);

        $this->db->where('token', $data['token']);
        if (isset($data['customer_id'])):
            $this->db->where('customer_id', $data['customer_id']);
        endif;
        $query = $this->db->get()->row_array();
        if ($query):
            $quantity = $query['quantity'];
        endif;
        return $quantity;
    }

    public function getCartTotal()
    {
        return 0;
    }

    public function checkProduct($id)
    {
        $this->db->from($this->table_view);
        $this->db->where('product_id', $id);
        $this->db->where('token', $this->input->post('token'));
        $query = $this->db->get();
        return $query->row_array();
    }

    public function save()
    {
        $this->db->trans_start();

        $this->db->set('token', $this->input->post('token'));
        $this->db->set('customer_id', $this->input->post('customer_id'));
        $this->db->set('product_id', $this->input->post('product_id'));
        $this->db->set('price_type', $this->input->post('price_type'));
        $this->db->set('quantity', $this->input->post('quantity'));
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
