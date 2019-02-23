<?php

class Products_model extends CI_Model
{

    private $table = 'products';
    private $table_view = 'products';
    private $column_order = array(null, 'name', 'code', 'model', 'sku', 'updated_at', null);
    private $column_search = array('name', 'code', 'model', 'sku', 'updated_at');
    private $order = array('updated_at' => 'desc');
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
    }

    private function _getTablesQuery()
    {
        $this->db->from($this->table_view);

        if ($this->input->post('categoryId')):
            $this->db->where('id IN(SELECT product_id FROM product_categories WHERE category_id=' . $this->input->post('categoryId') . ')');
        endif;
        
        if ($this->input->post('name')):
            $this->db->where('name', $this->input->post('name'));
        endif;
        
        $status = 1;
        if ($this->input->post('status') && $this->input->post('status') == 'false'):
            $status = 0;
        endif;
        $this->db->where('status', $status);
        $i = 0;
        foreach ($this->column_search as $item):
            if (isset($_POST['length'])):
                if (isset($_POST['search'])):
                    if ($i === 0):
                        $this->db->group_start();
                        $this->db->like($item, $_POST['search']);
                    else:
                        $this->db->or_like($item, $_POST['search']);
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
        $this->db->set('manufacturer_id', $this->input->post('manufacturer_id'));
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

        $this->db->where('product_id', $id);
        $this->db->delete('product_categories');

        if ($this->input->post('categories')):
            $categories = json2arr($this->input->post('categories'));
            if ($categories):
                foreach ($categories as $category):
                    $this->db->set('product_id', $id);
                    $this->db->set('category_id', $category['id']);
                    $this->db->insert('product_categories');
                endforeach;
            endif;
        endif;

        $this->db->where('product_id', $id);
        $this->db->delete('product_attributes');

        if ($this->input->post('attributes')):
            $attributes = json2arr($this->input->post('attributes'));
            if ($attributes):
                foreach ($attributes as $attribute):
                    $this->db->set('product_id', $id);
                    $this->db->set('attribute_id', $attribute['attribute_id']);
                    $this->db->set('text', $attribute['text']);
                    $this->db->insert('product_attributes');
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

        if ($result):
            foreach ($result as $value):
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
        $this->db->from('product_attributes');
        $this->db->where('product_id', $id);
        $query = $this->db->get();
        $result = $query->result_array();

        if ($result):
            foreach ($result as $value):
                $data[] = array(
                    'attribute_id' => $value['attribute_id'],
                    'text' => $value['text'],
                );
            endforeach;
        endif;

        return $data;
    }

}
