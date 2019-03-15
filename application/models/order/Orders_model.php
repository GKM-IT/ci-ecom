<?php

class Orders_model extends CI_Model
{

    private $table = 'orders';
    private $table_view = 'orders';
    private $column_order = array(null, 'name', 'email', 'contact', 'total', 'status', 'updated_at', null);
    private $column_search = array('name', 'email', 'contact', 'total', 'status', 'updated_at');
    private $order = array('updated_at' => 'desc');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
        $this->load->model('order/carts_model');
    }

    private function _getTablesQuery()
    {
        $this->db->select('t.*');
        $this->db->select('ot.name as order_type');
        $this->db->select('cr.name as country');
        $this->db->select('z.name as zone');
        $this->db->select('ct.name as city');

        $this->db->from($this->table_view . ' t');
        $this->db->join('order_types ot', 'ot.id=t.order_type_id');
        $this->db->join('countries cr', 'cr.id=t.country_id');
        $this->db->join('zones z', 'z.id=t.zone_id');
        $this->db->join('cities ct', 'ct.id=t.city_id');

        if ($this->input->post('order_type_id')):
            $this->db->where('t.order_type_id', $this->input->post('order_type_id'));
        endif;
        if ($this->input->post('customer_id')):
            $this->db->where('t.customer_id', $this->input->post('customer_id'));
        endif;
        if ($this->input->post('name')):
            $this->db->where('t.name', $this->input->post('name'));
        endif;
        if ($this->input->post('email')):
            $this->db->where('t.email', $this->input->post('email'));
        endif;
        if ($this->input->post('contact')):
            $this->db->where('t.contact', $this->input->post('contact'));
        endif;
        if ($this->input->post('country_id')):
            $this->db->where('t.country_id', $this->input->post('country_id'));
        endif;
        if ($this->input->post('zone_id')):
            $this->db->where('t.zone_id', $this->input->post('zone_id'));
        endif;
        if ($this->input->post('city_id')):
            $this->db->where('t.city_id', $this->input->post('city_id'));
        endif;
        if ($this->input->post('postcode')):
            $this->db->where('t.postcode', $this->input->post('postcode'));
        endif;
        if ($this->input->post('address')):
            $this->db->where('t.address', $this->input->post('address'));
        endif;
        if ($this->input->post('comment')):
            $this->db->where('t.comment', $this->input->post('comment'));
        endif;
        if ($this->input->post('total')):
            $this->db->where('t.total', $this->input->post('total'));
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
        $this->db->select('ot.name as order_type');
        $this->db->select('cr.name as country');
        $this->db->select('z.name as zone');
        $this->db->select('ct.name as city');

        $this->db->from($this->table_view . ' t');
        $this->db->join('order_types ot', 'ot.id=t.order_type_id');
        $this->db->join('countries cr', 'cr.id=t.country_id');
        $this->db->join('zones z', 'z.id=t.zone_id');
        $this->db->join('cities ct', 'ct.id=t.city_id');

        if ($this->input->post('order_type_id')):
            $this->db->where('t.order_type_id', $this->input->post('order_type_id'));
        endif;
        if ($this->input->post('customer_id')):
            $this->db->where('t.customer_id', $this->input->post('customer_id'));
        endif;
        if ($this->input->post('name')):
            $this->db->where('t.name', $this->input->post('name'));
        endif;
        if ($this->input->post('email')):
            $this->db->where('t.email', $this->input->post('email'));
        endif;
        if ($this->input->post('contact')):
            $this->db->where('t.contact', $this->input->post('contact'));
        endif;
        if ($this->input->post('country_id')):
            $this->db->where('t.country_id', $this->input->post('country_id'));
        endif;
        if ($this->input->post('zone_id')):
            $this->db->where('t.zone_id', $this->input->post('zone_id'));
        endif;
        if ($this->input->post('city_id')):
            $this->db->where('t.city_id', $this->input->post('city_id'));
        endif;
        if ($this->input->post('postcode')):
            $this->db->where('t.postcode', $this->input->post('postcode'));
        endif;
        if ($this->input->post('address')):
            $this->db->where('t.address', $this->input->post('address'));
        endif;
        if ($this->input->post('comment')):
            $this->db->where('t.comment', $this->input->post('comment'));
        endif;
        if ($this->input->post('total')):
            $this->db->where('t.total', $this->input->post('total'));
        endif;

        $status = 1;
        if ($this->input->post('status') && $this->input->post('status') == 'false'):
            $status = 0;
        endif;
        $this->db->where('t.status', $status);
        $this->db->where('t.id', $id);
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

        if ($this->input->post('order_type_id')) {
            $this->db->set('order_type_id', $this->input->post('order_type_id'));
        } else {
            $this->db->set('order_type_id', 1);
        }
        $this->db->set('customer_id', $this->input->post('customer_id'));
        $this->db->set('name', $this->input->post('name'));
        $this->db->set('email', $this->input->post('email'));
        $this->db->set('contact', $this->input->post('contact'));
        $this->db->set('country_id', $this->input->post('country_id'));
        $this->db->set('zone_id', $this->input->post('zone_id'));
        $this->db->set('city_id', $this->input->post('city_id'));
        $this->db->set('postcode', $this->input->post('postcode'));
        $this->db->set('address', $this->input->post('address'));
        $this->db->set('comment', $this->input->post('comment'));
        $this->db->set('status', $this->input->post('status'));

        $filter['token'] = $this->input->post('token');
        $filter['customer_id'] = $this->input->post('customer_id');
        $total = $this->carts_model->getCartTotal($filter);
        $this->db->set('total', $total);

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

        $this->setProducts($id);
        $this->setTotals($id);

        if ($this->db->trans_status() === false):
            $this->db->trans_rollback();
            return false;
        else:
            $this->db->trans_commit();
            return true;
        endif;
    }

    public function getProducts($id)
    {
        $this->db->select('t.*');
        $this->db->select('p.name as product_name');
        $this->db->select('p.image as product_image');
        $this->db->from('order_products t');
        $this->db->join('products p', 'p.id=t.product_id');
        $this->db->where('t.order_id', $id);
        $query = $this->db->get();
        return $query->result_array();
    }

    public function setProducts($id)
    {
        $this->db->where('order_id', $id);
        $this->db->delete('order_products');

        $filter = [];
        $filter['token'] = $this->input->post('token');
        $filter['customer_id'] = $this->input->post('customer_id');
        $products = $this->carts_model->getProducts($filter);
        // print_r($products);
        // exit;
        if ($products):
            foreach ($products as $value):
                $total = ($value['price'] * $value['quantity']);

                $this->db->set('order_id', $id);
                $this->db->set('product_id', $value['product_id']);
                $this->db->set('quantity', $value['quantity']);
                $this->db->set('price', $value['price']);
                $this->db->set('total', $total);

                $this->db->insert('order_products');
            endforeach;
        endif;
    }

    public function setTotals($id)
    {
        $this->db->where('order_id', $id);
        $this->db->delete('order_totals');
        $total = 0;
        $filter = [];
        $filter['token'] = $this->input->post('token');
        $filter['customer_id'] = $this->input->post('customer_id');
        $products = $this->carts_model->getProducts($filter);
        if ($products):
            foreach ($products as $value):
                $total = ($value['price'] * $value['quantity']);
            endforeach;
        endif;

        $this->db->set('order_id', $id);
        $this->db->set('code', 'total');
        $this->db->set('title', 'total');
        $this->db->set('value', $total);

        $this->db->insert('order_totals');
    }

}
