<?php

class Customer_wishlists_model extends CI_Model
{

    private $table = 'customer_wishlists';
    private $table_view = 'customer_wishlists';
    private $column_order = array(null, 'product_name', 'customer_name', 'updated_at', null);
    private $column_search = array('product_name', 'customer_name', 'updated_at');
    private $order = array('updated_at' => 'desc');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
    }

    private function _getTablesQuery()
    {
        $this->db->select('t.*');
        $this->db->select('p.name as product_name');
        $this->db->select('c.name as customer_name');
        $this->db->from($this->table_view . ' t');
        $this->db->join('products p', 'p.id=t.product_id');
        $this->db->join('customers c', 'c.id=t.customer_id');

        if ($this->input->post('customer_id')):
            $this->db->where('t.customer_id', $this->input->post('customer_id'));
        endif;

        $status = 1;
        if ($this->input->post('status') && $this->input->post('status') == 'false'):
            $status = 0;
        endif;
        $this->db->where('t.status', $status);
        $i = 0;
        foreach ($this->column_search as $item):
            if (isset($_POST['length'])):
                if (isset($_POST['search']['value'])):
                    if ($i === 0):
                        $this->db->group_start();
                        $this->db->like($item, $_POST['search']['value']);
                    else:
                        $this->db->or_like($item, $_POST['search']['value']);
                    endif;
                    if (count($this->column_search) - 1 == $i):
                        $this->db->group_end();
                    endif;
                endif;
            endif;
            $i++;
        endforeach;
        if (isset($_POST['order'])):
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        elseif (isset($this->order)):
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
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
        $this->db->from($this->table_view);
        return $this->db->count_all_results();
    }

    public function getById($id)
    {
        $this->db->select('t.*');
        $this->db->select('p.name as product_name');
        $this->db->select('c.name as customer_name');
        $this->db->from($this->table_view . ' t');
        $this->db->join('products p', 'p.id=t.product_id');
        $this->db->join('customers c', 'c.id=t.customer_id');
        $this->db->where('t.id', $id);
        $query = $this->db->get();
        return $query->row_array();
    }

    public function checkWishlist($id)
    {
        $this->db->from($this->table_view);
        $this->db->where('product_id', $id);
        $this->db->where('customer_id', $this->input->post('customer_id'));
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
        $this->db->set('customer_id', $this->input->post('customer_id'));
        $this->db->set('product_id', $this->input->post('product_id'));
        if ($this->input->post('status')):
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

        if ($this->db->trans_status() === false):
            $this->db->trans_rollback();
            return false;
        else:
            $this->db->trans_commit();
            return true;
        endif;
    }

}
