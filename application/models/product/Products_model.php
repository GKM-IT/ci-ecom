<?php

class Products_model extends CI_Model
{

    private $table = 'products';
    private $table_view = 'products_view';
    private $column_search = array('name', 'code', 'model', 'sku', 'mrp', 'price', 'description', 'type', 'manufacture', 'tax_class', 'length_class', 'weight_class', 'weight_unit', 'updated_at');
    private $currectDatetime = '';
    private $datetime_format = '';

    public function __construct()
    {
        parent::__construct();
        $this->load->model('customer/customers_model');
        $this->currectDatetime = date('Y-m-d h:i:s');
        $this->datetime_format = $this->settings_lib->config('config', 'default_date_time_format');
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

        if ($this->input->post('manufacture_id')) :
            $this->db->where('manufacture_id', $this->input->post('manufacture_id'));
        endif;

        if ($this->input->post('categories')) :
            $categories = json2arr($this->input->post('categories'));
            $categories = implode(',', $categories);
            $this->db->where('id IN(SELECT product_id FROM product_categories WHERE category_id IN(' . $categories . '))');
        endif;

        if ($this->input->post('manufactures')) :
            $manufactures = json2arr($this->input->post('manufactures'));
            $this->db->where_in('manufacture_id', $manufactures);
        endif;

        $this->query_lib->where();
        $this->query_lib->like();
        $this->query_lib->getSearch();
        $this->query_lib->getSort();

        if ($this->input->post('filterType') == 'special') :
            if ($this->input->post('customer_id')) :
                $this->db->having('special_price !=', NUll);
            endif;
        endif;
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
        $this->db->set('mrp', $this->input->post('mrp'));
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
        $this->db->set('stock', $this->input->post('stock'));
        $this->db->set('featured', $this->input->post('featured'));

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
                    $this->db->set('category_id', $category);
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
                    $this->db->set('attribute_id', $attribute['attributeId']);
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
                    $this->db->set('customer_group_id', $price['customerGroupId']);
                    $this->db->set('price', $price['price']);
                    $this->db->set('start', date('Y-m-d', strtotime($price['start'])));
                    $this->db->set('end', date('Y-m-d', strtotime($price['end'])));
                    if (isset($price['status'])) :
                        $this->db->set('status', $price['status']);
                    else :
                        $this->db->set('status', 1);
                    endif;
                    $this->db->insert('product_prices');
                endforeach;
            endif;
        endif;

        $this->db->where('product_id', $id);
        $this->db->delete('related_products');

        if ($this->input->post('relatedProducts')) :
            $relatedProducts = json2arr($this->input->post('relatedProducts'));
            if ($relatedProducts) :
                foreach ($relatedProducts as $relatedProduct) :
                    $this->db->set('product_id', $id);
                    $this->db->set('related_id', $relatedProduct);
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

    public function getPrices($id)
    {
        $data = array();
        $this->db->from('product_prices');
        $this->db->where('product_id', $id);
        $query = $this->db->get();
        $result = $query->result_array();

        if ($result) :
            foreach ($result as $value) :
                $data[] = array(
                    'customer_group_id' => $value['customer_group_id'],
                    'price' => $value['price'],
                    'start' =>  $value['start'],
                    'end' => $value['end'],
                );
            endforeach;
        endif;

        return $data;
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
                    if ($value['type'] == 'P' || $value['type'] == 'p') :
                        $totalTax = ($total * $value['rate']) / 100;
                    else :
                        $totalTax = $total + $value['rate'];
                    endif;

                    $array[] = [
                        'name' => $value['name'],
                        'rate' => $this->settings_lib->number_format($value['rate']),
                        'type' => $value['type'],
                        'amount' => $this->settings_lib->number_format($total),
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
                    if ($value['type'] == 'P' || $value['type'] == 'p') :
                        $totalTax += (($total * $value['rate']) / 100);
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
        $this->getSpecialPrice();
        $this->db->from('products_view');
        $this->db->where('id IN(SELECT related_id FROM related_products WHERE product_id=' . $id . ')');
        $query = $this->db->get();
        // print_r( $this->db->last_query());
        // exit;
        $result = $query->result_array();

        if ($result) :
            foreach ($result as $object) :
                $data[] = $this->getData($object);
            endforeach;
        endif;

        return $data;
    }
    public function getTypeRelatedProducts($id)
    {
        $data = array();
        $this->getSpecialPrice();
        $this->db->from('products_view');
        $this->db->where('id IN(SELECT related_id FROM related_products WHERE product_id=' . $id . ')');
        $query = $this->db->get();
        // print_r( $this->db->last_query());
        // exit;
        $result = $query->result_array();

        if ($result) :
            foreach ($result as $object) :
                $data[] = $this->getTypeData($object);
            endforeach;
        endif;

        return $data;
    }

    public function getTypeData($object)
    {
        $result = [];
        if ($object) :
            $mrp = $this->settings_lib->number_format($object['mrp']);
            $price = $this->settings_lib->number_format($object['price']);

            if ($object['special_price']) :
                $specialPrice = $this->settings_lib->number_format($object['special_price']);
                $finalPrice = $specialPrice;
            else :
                $specialPrice = $this->settings_lib->number_format(0);
                $finalPrice = $price;
            endif;


            $totalTax = $this->products_model->getTotalTax($object['id'], $finalPrice);
            $totalTaxDetails = $this->products_model->getTaxDetails($object['id'], $finalPrice);

            $discount = $this->settings_lib->discount($finalPrice + $totalTax, $specialPrice + $totalTax);

            $margin = $this->settings_lib->margin($mrp + $totalTax, $finalPrice + $totalTax);

            $result = [
                'id' => $object['id'],
                'type_id' => $object['type_id'],
                'type' => $object['type'],
                'manufacture_id' => $object['manufacture_id'],
                'manufacture' => $object['manufacture'],
                'code' => $object['code'],
                'model' => $object['model'],
                'sku' => $object['sku'],
                'name' => $object['name'],
                'price_type' => $object['price_type'],
                'image' => $object['image'],
                'image_thumb' => base_url($object['image']),
                'description' => $object['description'],
                'tax_class_id' => $object['tax_class_id'],
                'tax_class' => $object['tax_class'],
                'length_class_id' => $object['length_class_id'],
                'length_class' => $object['length_class'],
                'length_unit' => $object['length_unit'],
                'length' => $this->settings_lib->number_format($object['length']),
                'width' => $this->settings_lib->number_format($object['width']),
                'height' => $this->settings_lib->number_format($object['height']),
                'weight_class_id' => $object['weight_class_id'],
                'weight_class' => $object['weight_class'],
                'weight_unit' => $object['weight_unit'],
                'weight' => $this->settings_lib->number_format($object['weight']),
                'viewed' => $object['viewed'],
                'minimum' => $object['minimum'],
                'shipping' => $object['shipping'],
                'inventory' => $object['inventory'],
                'mrp' => $mrp,
                'price' => $price,
                'special_price' => $specialPrice,
                'final_price' => $finalPrice,
                'margin' => $margin,
                'discount' => $discount,
                'total_tax' => $this->settings_lib->number_format($totalTax),
                'tax_details' => $totalTaxDetails,
                'status' => $object['status'],
                'status_text' => $object['status'] ? $this->lang->line('text_enable') : $this->lang->line('text_disable'),
                'created_at' => date($this->datetime_format, strtotime($object['created_at'])),
                'updated_at' => date($this->datetime_format, strtotime($object['updated_at'])),
            ];
        endif;
        return $result;
    }

    public function getFullData($object)
    {
        $result = [];
        if ($object) :
            $mrp = $this->settings_lib->number_format($object['mrp']);
            $price = $this->settings_lib->number_format($object['price']);

            if ($object['special_price']) :
                $specialPrice = $this->settings_lib->number_format($object['special_price']);
                $finalPrice = $specialPrice;
            else :
                $specialPrice = $this->settings_lib->number_format(0);
                $finalPrice = $price;
            endif;


            $totalTax = $this->products_model->getTotalTax($object['id'], $finalPrice);
            $totalTaxDetails = $this->products_model->getTaxDetails($object['id'], $finalPrice);

            $discount = $this->settings_lib->discount($finalPrice + $totalTax, $specialPrice + $totalTax);

            $margin = $this->settings_lib->margin($mrp + $totalTax, $finalPrice + $totalTax);

            $relatedProducts = $this->products_model->getRelatedProducts($object['id']);
            $getPrices = $this->products_model->getPrices($object['id']);

            $result = [
                'id' => $object['id'],
                'type_id' => $object['type_id'],
                'type' => $object['type'],
                'manufacture_id' => $object['manufacture_id'],
                'manufacture' => $object['manufacture'],
                'code' => $object['code'],
                'model' => $object['model'],
                'sku' => $object['sku'],
                'name' => $object['name'],
                'price_type' => $object['price_type'],
                'image' => $object['image'],
                'image_thumb' => base_url($object['image']),
                'description' => $object['description'],
                'text' => $object['text'],
                'tax_class_id' => $object['tax_class_id'],
                'tax_class' => $object['tax_class'],
                'length_class_id' => $object['length_class_id'],
                'length_class' => $object['length_class'],
                'length_unit' => $object['length_unit'],
                'length' => $this->settings_lib->number_format($object['length']),
                'width' => $this->settings_lib->number_format($object['width']),
                'height' => $this->settings_lib->number_format($object['height']),
                'weight_class_id' => $object['weight_class_id'],
                'weight_class' => $object['weight_class'],
                'weight_unit' => $object['weight_unit'],
                'weight' => $this->settings_lib->number_format($object['weight']),
                'viewed' => $object['viewed'],
                'minimum' => $object['minimum'],
                'shipping' => $object['shipping'],
                'inventory' => $object['inventory'],
                'mrp' => $mrp,
                'price' => $price,
                'special_price' => $specialPrice,
                'final_price' => $finalPrice,
                'margin' => $margin,
                'discount' => $discount,
                'total_tax' => $this->settings_lib->number_format($totalTax),
                'tax_details' => $totalTaxDetails,
                'related_products' => $relatedProducts,
                'prices' => $getPrices,
                'status' => $object['status'],
                'status_text' => $object['status'] ? $this->lang->line('text_enable') : $this->lang->line('text_disable'),
                'created_at' => date($this->datetime_format, strtotime($object['created_at'])),
                'updated_at' => date($this->datetime_format, strtotime($object['updated_at'])),
            ];
        endif;
        return $result;
    }

    public function getData($object)
    {
        $result = [];
        if ($object) :
            $mrp = $this->settings_lib->number_format($object['mrp']);
            $price = $this->settings_lib->number_format($object['price']);

            if ($object['special_price']) :
                $specialPrice = $this->settings_lib->number_format($object['special_price']);
                $finalPrice = $specialPrice;
            else :
                $specialPrice = $this->settings_lib->number_format(0);
                $finalPrice = $price;
            endif;


            $totalTax = $this->products_model->getTotalTax($object['id'], $finalPrice);
            $totalTaxDetails = $this->products_model->getTaxDetails($object['id'], $finalPrice);

            $discount = $this->settings_lib->discount($price + $totalTax, $specialPrice + $totalTax);

            $margin = $this->settings_lib->margin($mrp + $totalTax, $finalPrice + $totalTax);
            $relatedProducts = $this->products_model->getTypeRelatedProducts($object['id']);
            $result = [
                'id' => $object['id'],
                'type_id' => $object['type_id'],
                'type' => $object['type'],
                'manufacture_id' => $object['manufacture_id'],
                'manufacture' => $object['manufacture'],
                'code' => $object['code'],
                'model' => $object['model'],
                'sku' => $object['sku'],
                'name' => $object['name'],
                'price_type' => $object['price_type'],
                'image' => $object['image'],
                'image_thumb' => base_url($object['image']),
                'description' => $object['description'],
                // 'text' => $object['text'],
                'tax_class_id' => $object['tax_class_id'],
                'tax_class' => $object['tax_class'],
                'length_class_id' => $object['length_class_id'],
                'length_class' => $object['length_class'],
                'length_unit' => $object['length_unit'],
                'length' => $this->settings_lib->number_format($object['length']),
                'width' => $this->settings_lib->number_format($object['width']),
                'height' => $this->settings_lib->number_format($object['height']),
                'weight_class_id' => $object['weight_class_id'],
                'weight_class' => $object['weight_class'],
                'weight_unit' => $object['weight_unit'],
                'weight' => $this->settings_lib->number_format($object['weight']),
                'viewed' => $object['viewed'],
                'minimum' => $object['minimum'],
                'shipping' => $object['shipping'],
                'inventory' => $object['inventory'],
                'mrp' => $mrp,
                'price' => $price,
                'special_price' => $specialPrice,
                'final_price' => $finalPrice,
                'margin' => $margin,
                'discount' => $discount,
                'total_tax' => $this->settings_lib->number_format($totalTax),
                'tax_details' => $totalTaxDetails,
                'related_products' => $relatedProducts,
                'status' => $object['status'],
                'status_text' => $object['status'] ? $this->lang->line('text_enable') : $this->lang->line('text_disable'),
                'created_at' => date($this->datetime_format, strtotime($object['created_at'])),
                'updated_at' => date($this->datetime_format, strtotime($object['updated_at'])),
            ];
        endif;
        return $result;
    }
    
}
