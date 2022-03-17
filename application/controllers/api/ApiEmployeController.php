<?php

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/RestController.php';
require APPPATH . 'libraries/Format.php';

use chriskacerguis\RestServer\RestController;

class ApiEmployeController extends RestController
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('EmployeeModel');
    }
    public function index_get()
    {
        // echo "je suis un employer d'ici...";
        $employee = new EmployeeModel;
        $result_emp = $employee->get_employee();
        $this->response($result_emp, 200);
    }

    public function storeEmployee_post()
    {
        $employee = new EmployeeModel;
        $data = [
            'prod_name' => $this->input->post('prod_name'),
        ];
        $result = $employee->insertEmployee($data);
        
        if ($result > 0) {
            $this->response([
                'status'=> true,
                'message'=>'vyakunze mukama ...'
            ],  RestController::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'birayanse nukuri....'
            ],  RestController::HTTP_BAD_REQUEST);
        }
        
    }

    public function findEmployee_get($id)
    {
        $employee = new EmployeeModel;
        $result_emp = $employee->editEmployee($id);
        $this->response($result_emp, 200);
    }

    public function updateEmployee_put($id)
    {
        $employee = new EmployeeModel;
        $data = [
            'prod_name' => $this->put('prod_name'),
        ];
        $update_result = $employee->update_Employee($id, $data);

        if ($update_result > 0) {
            $this->response([
                'status' => true,
                'message' => 'vyabaye update...'
            ],  RestController::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'biranse kuba update....'
            ],  RestController::HTTP_BAD_REQUEST);
        }
    }

    public function deleteEmployee_delete($id)
    {
        $employee = new EmployeeModel;
        $result = $employee->delete_Employee($id);

        if ($result > 0) {
            $this->response([
                'status' => true,
                'message' => 'byafuditse ntuz...'
            ],  RestController::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'message' => 'biranse gufudika....'
            ],  RestController::HTTP_BAD_REQUEST);
        }
    }
}
