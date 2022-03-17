<?php 
    defined('BASEPATH') OR exit('No direct script access allowed');
    class EmployeeModel extends CI_Model {
        public function get_employee(){
            $query = $this->db->get('tbl_product');
            return $query->result();
        }

        public function insertEmployee($data)
        {
            return $this->db->insert('tbl_product',$data);
        }

        public function editEmployee($id)
        {
            $this->db->where('id_prod', $id);
            $query = $this->db->get('tbl_product');
            return $query->row();
        }

        public function update_Employee($id, $data)
        {
            $this->db->where('id_prod', $id);
            return $this->db->update('tbl_product', $data);
        }

        public function delete_Employee($id)
        {
            return $this->db->delete('tbl_product', ['id_prod' => $id]);
        }
    }
?>