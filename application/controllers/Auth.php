<?php
class Auth extends CI_Controller{
     public function __construct() {
        parent::__construct();
    //     $this->load->model('model_kriteria');
    //     $this->load->model('model_subkriteria');
    //     $this->load->model('model_alternatif');
    $this->load->model('hasil_model');
     }

    public function index(){
        // $data['kriteria']=$this->model_kriteria->count_kriteria();
        // $data['subkriteria']=$this->model_subkriteria->count_subkriteria();
        // $data['alternatif']=$this->model_alternatif->count_alternatif();
        $this->load->view('Utama');
    }
    public function utama(){
        // $data['kriteria']=$this->model_kriteria->count_kriteria();
        // $data['subkriteria']=$this->model_subkriteria->count_subkriteria();
        // $data['alternatif']=$this->model_alternatif->count_alternatif();
        $this->load->view('login');
        
    }

    public function User(){
        // $data['kriteria']=$this->model_kriteria->count_kriteria();
        // $data['subkriteria']=$this->model_subkriteria->count_subkriteria();
        // $data['alternatif']=$this->model_alternatif->count_alternatif();
        $data['hasil'] = $this->hasil_model->get_all()->result();
        $this->load->view('hasil_user/data_user', $data);
        
    }

    // public function proses()
    // {
    //     $post = $this ->input->post(null, TRUE);
    //     if (isset($post['login1'])) {
    //         $this->load->model('user_m');
    //         $query = $this->user_m->login($post);
    //         if($query->num_rows() > 0) {
    //             $row = $query->row();
    //             $params = array(
    //                 'userid' => $row ->id_user
    //             );
    //             $this->session->set_userdata($params);
    //             echo "<script>
    //                 alert('Selamat Login Berhasil');
    //                 window.location='".site_url('Dashboard')."';
    //             </script>";
                
    //         }else{
    //              echo "<script>
    //                 alert('Login gagal, username atau password salah');
    //                 window.location='".site_url('auth')."';
    //             </script>";        
    //       }
    //     }
    // }
    // public function logout(){
    //     $this->session->unset_userdata('userid');
    //     redirect ('Auth');
    // }
}
