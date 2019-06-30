<?php

class Products_model extends CI_Model
{

    private $table = 'products';
    private $table_view = 'products_view';
    private $column_search = array('name', 'code', 'model', 'sku', 'updated_at');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->load->model('customer/customers_model');
        $this->currectDatetime = date('Y-m-d h:i:s');
        $this->query_lib->table = $this->table;
        $this->query_lib->table_view = $this->table_view;
        $this->query_lib->column_search = $this->column_search;
    }

    private function getSpecialPrice()
    {
        if ($this->input->post('customer_id')) :
            $customer = $this->db->get_where('customers', ['id' => $this->input->post('customer_id')])->row_array();
            $this->db->select('*, (SELECT pp.price FROM product_prices pp WHERE pp.product_id=' . $this->table_view . '.id AND pp.start <= date(now()) AND pp.end >= date(now()) AND pp.status=1 AND pp.customer_group_id=' . $customer['group_id'] . ' LIMIT 1) AS special_price');
        else :
            $this->db->select('*, 0 AS special_price');
        endif;
    }

    private function _getTablesQuery()
    {
        $this->getSpecialPrice();
        $this->db->from($this->table_view);
        if ($this->input->post('category_id')) :
            $this->db->where('id IN(SELECT product_id FROM product_categories WHERE category_id=' . $this->input->post('category_id') . ')');
        endif;

        if ($this->input->post('manufacturer_id')) :
            $this->db->where('manufacturer_id', $this->input->post('manufacturer_id'));
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
        $this->getSpecialPrice();
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

        $this->db->set('type_id', $this->input->post('type_id'));
        $this->db->set('manufacture_id', $this->input->post('manufacture_id'));
        $this->db->set('code', $this->input->post('code'));
        $this->db->set('model', $this->input->post('model'));
        $this->db->set('sku', $this->input->post('sku'));
        $this->db->set('name', $this->input->post('name'));
        $this->db->set('price', $this->input->post('price'));
        $this->db->set('image', $this->input->post('image'));
        $this->db->set('description', $this->input->post('description'));
        $this->db->set('text', $this->input->post('text'));
        $this->db->set('tax_class_id', $this->input->post('tax_class_id'));
        $this->db->set('length_class_id', $this->input->post('length_class_id'));
        $this->db->set('length', $this->input->post('length'));
        $this->db->set('width', $this->input->post('width'));
        $this->db->set('height', $this->input->post('height'));
        $this->db->set('weight_class_id', $this->input->post('weight_class_id'));
        $this->db->set('weight', $this->input->post('weight'));
        $this->db->set('minimum', $this->input->post('minimum'));
        $this->db->set('shipping', $this->input->post('shipping'));
        $this->db->set('inventory', $this->input->post('inventory'));

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

        $this->db->where('product_id', $id);
        $this->db->delete('product_categories');

        if ($this->input->post('categories')) :
            $categories = json2arr($this->input->post('categories'));
            if ($categories) :
                foreach ($categories as $category) :
                    $this->db->set('product_id', $id);
                    $this->db->set('category_id', $category['category_id']);
                    $this->db->insert('product_categories');
                endforeach;
            endif;
        endif;

        $this->db->where('product_id', $id);
        $this->db->delete('product_attributes');

        if ($this->input->post('attributes')) :
            $attributes = json2arr($this->input->post('attributes'));
            if ($attributes) :
                foreach ($attributes as $attribute) :
                    $this->db->set('product_id', $id);
                    $this->db->set('attribute_id', $attribute['attribute_id']);
                    $this->db->set('text', $attribute['text']);
                    $this->db->insert('product_attributes');
                endforeach;
            endif;
        endif;

        $this->db->where('product_id', $id);
        $this->db->delete('product_prices');

        if ($this->input->post('prices')) :
            $prices = json2arr($this->input->post('prices'));
            if ($prices) :
                foreach ($prices as $price) :
                    $this->db->set('product_id', $id);
                    $this->db->set('customer_group_id', $price['customer_group_id']);
                    $this->db->set('price', $price['price']);
                    $this->db->set('start', $price['start']);
                    $this->db->set('end', $price['end']);
                    $this->db->set('status', $price['status']);
                    $this->db->insert('product_prices');
                endforeach;
            endif;
        endif;

        $this->db->where('product_id', $id);
        $this->db->delete('related_products');

        if ($this->input->post('related_products')) :
            $related_products = json2arr($this->input->post('related_products'));
            if ($related_products) :
                foreach ($related_products as $related_product) :
                    $this->db->set('product_id', $id);
                    $this->db->set('related_id', $related_product['related_id']);
                    $this->db->insert('related_products');
                endforeach;
            endif;
        endif;

        if ($this->db->trans_status() === false) :
            $this->db->trans_rollback();
            return false;
        else :
            $this->db->trans_commit();
            return true;
        endif;
    }

    public function getCategories($id)
    {
        $data = array();
        $this->db->select('pc.category_id');
        $this->db->select('c.name');
        $this->db->from('product_categories pc');
        $this->db->join('categories c', 'c.id=pc.category_id');
        $this->db->where('pc.product_id', $id);
        $query = $this->db->get();
        $result = $query->result_array();

        if ($result) :
            foreach ($result as $value) :
                $data[] = array(
                    'id' => $value['category_id'],
                    'name' => $value['name'],
                );
            endforeach;
        endif;

        return $data;
    }

    public function getAttributes($id)
    {
        $data = array();
        $this->db->select('pa.*');
        $this->db->select('a.name AS attribute');
        $this->db->from('product_attributes pa');
        $this->db->join('attributes a', 'a.id=pa.attribute_id');
        $this->db->where('pa.product_id', $id);
        $query = $this->db->get();
        $result = $query->result_array();

        if ($result) :
            foreach ($result as $value) :
                $data[] = array(
                    'attribute_id' => $value['attribute_id'],
                    'attribute' => $value['attribute'],
                    'text' => $value['text'],
                );
            endforeach;
        endif;

        return $data;
    }

    public function getTaxDetails($id, $total)
    {
        $array = [];
        $product = $this->getById($id);
        if ($product) :
            $this->db->from('tax_rates');
            $this->db->where('tax_class_id', $product['tax_class_id']);
            $query = $this->db->get()->result_array();
            if ($query) :
                foreach ($query as $value) :
                    $totalTax = 0;
                    if ($value['type'] == 'P') :
                        $totalTax = ($total * $value['rate']) / 100;
                    else :
                        $totalTax = $total + $value['rate'];
                    endif;

                    $array[] = [
                        'name' => $value['name'],
                        'rate' => $this->settings_lib->number_format($value['rate']),
                        'type' => $value['type'],
                        'total' => $this->settings_lib->number_format($totalTax),
                    ];
                endforeach;
            endif;
        endif;
        return $array;
    }

    public function getTotalTax($id, $total)
    {
        $totalTax = 0;
        $product = $this->getById($id);
        if ($product) :
            $this->db->from('tax_rates');
            $this->db->where('tax_class_id', $product['tax_class_id']);
            $query = $this->db->get()->result_array();

            if ($query) :
                foreach ($query as $value) :
                    if ($value['type'] == 'P') :
                        $totalTax += ($total * $value['rate']) / 100;
                    else :
                        $totalTax += $total + $value['rate'];
                    endif;
                endforeach;
            endif;
        endif;
        return $totalTax;
    }

    public function getRelatedProducts($id)
    {
        $data = array();
        $this->db->from('related_products_view');
        $this->db->where('product_id', $id);
        $query = $this->db->get();
        $result = $query->result_array();

        if ($result) :
            foreach ($result as $value) :
                $data[] = array(
                    'id' => $value['related_id'],
                    'product_name' => $value['product_name'],
                    'product_image' => $value['product_image'] ? base_url($value['product_image']) : '',
                    'price' => $this->settings_lib->number_format($value['price']),
                    'price_type' => $value['price_type'],
                    'weight_class' => $value['weight_class'],
                    'weight_unit' => $value['weight_unit'],
                    'weight' => $this->settings_lib->number_format($value['weight']),
                    'length_class' => $value['length_class'],
                    'length_unit' => $value['length_unit'],
                    'length' => $this->settings_lib->number_format($value['length']),
                    'height' => $this->settings_lib->number_format($value['height']),
                    'width' => $this->settings_lib->number_format($value['width']),
                );
            endforeach;
        endif;

        return $data;
    }
}
