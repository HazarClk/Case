<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Home extends CI_Controller
{
    public function __construct()
    {

        parent:: __construct();
    }

    public function index()
    {
        $data['list'] = $this->db->get("work_list")->result();
        $this->load->view('index', $data);
    }

    public function createData()
    {
        if ($_POST['api_url']) {
            $headers = array(
                'Content-Type: application/json; charset=utf-8',
            );
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $_POST['api_url']);
            curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763');
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HEADER, false);
            $output = curl_exec($ch);
            curl_close($ch);
            $decoded = (array)json_decode($output);
            foreach ($decoded as $key => $o) {
                $hi = (array)$o;
                $check = $this->db->get_where("work_list", array("name" => $hi[$_POST['key_name']]))->row();
                if (!$check) {
                    $addData['name'] = $hi[$_POST['key_name']];
                    $addData['level'] = $hi[$_POST['key_level']];
                    $addData['time'] = $hi[$_POST['key_time']];
                    $this->db->insert("work_list", $addData);
                }
            }
            $this->session->set_flashdata("createSuccess", "success");
            redirect(base_url());
        }else{
            redirect(base_url());
        }
    }
}
