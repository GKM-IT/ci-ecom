<?php

class Purchase_carts_model extends CI_Model
{

    private $table = 'purchase_carts';
    private $table_view = 'purchase_carts_view';
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

    private function _getTablesQuery()
    {

        $this->db->from($this->table_view);
        if ($this->input->post('token')):
            $this->db->where('token', $this->input->post('token'));
        endif;
        if ($this->input->post('vendor_id')):
            $this->db->where('vendor_id', $this->input->post('vendor_id'));
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

    public function getProducts($data)
    {        
        $this->db->from($this->table_view);        
        $this->db->where('token', $data['token']);
        $this->db->where('user_id', $data['user_id']);
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getCartTotalQty()
    {
        $total = 0;
        $this->db->select_sum('t.quantity', 'quantity');
        $this->db->from('purchase_carts t');
        $this->db->where('t.token', $this->input->post('token'));
        $query = $this->db->get()->row_array();
        if ($query['quantity']):
            $total = $query['quantity'];
        endif;
        return $total;
    }

    public function getCartTotal()
    {
        $total = 0;
        $this->db->select('t.*');
        $this->db->from('purchase_carts t');
        $this->db->where('t.token', $this->input->post('token'));
        $query = $this->db->get()->result_array();
        if ($query):
            foreach ($query as $value):
                $total += $this->getFinalTotal($value);
            endforeach;
        endif;
        return $total;
    }

    public function getFinalTotal($object)
    {
        $total = ($object['price'] * $object['quantity']) + $object['tax'];
        return $total;
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
        $this->db->set('user_id', $this->input->post('user_id'));
        $this->db->set('product_id', $this->input->post('product_id'));
        $this->db->set('price', $this->input->post('price'));
        $this->db->set('quantity', $this->input->post('quantity'));
        $this->db->set('tax', $this->input->post('tax'));
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
