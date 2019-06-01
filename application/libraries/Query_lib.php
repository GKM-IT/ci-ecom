<?php
class Query_lib
{
    private $ci;
    public $table;
    public $column_search;

    public function __construct()
    {
        $this->ci = &get_instance();
        $this->ci->load->database();
    }

    public function getSearch()
    {
        $i = 0;
        foreach ($this->column_search as $item):
            if ($this->ci->input->post('search')):
                if ($i === 0):
                    $this->ci->db->group_start();
                    $this->ci->db->like($item, $this->ci->input->post('search'));
                else:
                    $this->ci->db->or_like($item, $this->ci->input->post('search'));
                endif;
                if (count($this->column_search) - 1 == $i):
                    $this->ci->db->group_end();
                endif;
            endif;
            $i++;
        endforeach;
    }

    public function getSort()
    {
        if ($this->ci->input->post('sort_by')):
            $this->ci->db->order_by($this->ci->input->post('sort_by'), $this->ci->input->post('sort_dir'));
        else:
            $this->ci->db->order_by('updated_at', 'desc');
        endif;
    }

    public function getPaginate()
    {
        if ($this->ci->input->post('length')):
            if ($this->ci->input->post('length') != -1):
                if ($this->ci->input->post('start')):
                    $start = $this->ci->input->post('start');
                else:
                    $start = 0;
                endif;
                $this->ci->db->limit($this->ci->input->post('length'), $start);
            endif;
        endif;
    }

    public function deleteById($id)
    {
        $this->ci->db->trans_start();
        $this->ci->db->where('id', $id);
        $this->ci->db->delete($this->table);
        $this->ci->db->trans_complete();
        if ($this->ci->db->trans_status() === false):
            $this->ci->db->trans_rollback();
            return false;
        else:
            $this->ci->db->trans_commit();
            return true;
        endif;
    }

    public function find()
    {
        if ($_POST['find']):
            foreach ($_POST['find'] as $key => $value):
                $this->ci->db->like($key, $value);
            endforeach;
        endif;
    }
}
