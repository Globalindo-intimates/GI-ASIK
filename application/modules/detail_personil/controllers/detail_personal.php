<?php
 defined('BASEPATH') OR exit('No direct script access allowed');

/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class detail_personal extends MX_Controller{
    function __construct()
    {
        parent::__construct();
        $this->sess_id = $this->session->userdata('userid');
        // $this->load->model('User_model');
    } 

    /*
     * Listing of user
     */
    function index(){
       
        if(empty($this->sess_id)) {
            redirect('index.php/administrator/login');
        }
        
        $this->load->library('pagination');
        
        $params['limit'] = RECORDS_PER_PAGE; 
        $params['offset'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : 0;
        
        $config = $this->config->item('pagination');
        $config['base_url'] = site_url('index.php/user?');
        // $config['total_rows'] = $this->User_model->get_all_G_USERS_count();
        $this->pagination->initialize($config);

        // $data['user'] = $this->User_model->get_all_G_USERS($params);
         $data = array();
        $data['content'] = $this->load->view('detail_personil/detail_personal_view',$data,true);
        $this->parser->parse(TEMPLATE.'/content_admin', $data);
    }

    
    
    
}
