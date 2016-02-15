<?php
class ModelLocalisationUnits extends Model {
    public function getUnitsList()
    {
        $units_list = $this->cache->get('units_list');

        if (!$units_list) {
            $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "units");
            $units_list = array();
            foreach($query->rows as $row){
                $units_list[$row['units_id']] = $row['title'];
            }
            $this->cache->set('units_list', $units_list);
        }
        return $units_list;
    }
    public function getUnit($units_id){
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "units WHERE units_id = '" . (int)$units_id . "'");
        return isset($query->row['title']) ? $query->row['title'] : '件';
    }
}