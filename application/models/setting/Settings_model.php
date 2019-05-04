<?php

class Settings_model extends CI_Model
{

    private $table = 'settings';
    private $currectDatetime = '';

    public function __construct()
    {
        parent::__construct();
        $this->currectDatetime = date('Y-m-d h:i:s');
    }

    public function getKey($code, $key)
    {
        $this->db->from($this->table);
        $this->db->where('code', $code);
        $this->db->where('key', $key);
        $query = $this->db->get();
        return $query->row_array();
    }

    public function save()
    {
        $this->db->trans_start();

        $this->db->where('code', 'config');
        $this->db->delete('settings');
        foreach ($this->input->post() as $key => $value) {
            if ($key == 'image' || $key == 'favicon') {
                $value = $this->custom_image->get_path($value);
            }
            $data = array(
                'code' => 'config',
                'key' => $key,
                'value' => $value,
            );
            $this->db->insert('settings', $data);
        }

        if ($this->db->trans_status() === false):
            $this->db->trans_rollback();
            return false;
        else:
            $this->db->trans_commit();
            return true;
        endif;
    }

}
