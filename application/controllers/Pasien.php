<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pasien extends CI_controller{
    
    public $table   = 'tbl_pasien';
    public $view    = 'admin/pasien/view';
    public $add     = 'admin/pasien/form_add';
    public $edit    = 'admin/pasien/form_edit';

    public function __construct(){
        parent::__construct();
        $this->load->model('logic');
        $this->load->library('form_validation');
        $this->load->helper('klinik');
    }

    public function index(){
        $sort = 'kd_pasien DESC';
        $data['query']  = $this->logic->get_all($this->table, $sort, 10);
        $data['konten'] = $this->view;
        $this->load->view('template',$data);
    }

    public function form_add(){

        $data['konten'] = $this->add;
        $this->load->view('template',$data);
    }

    public function form_edit($id){
        $d['kd_pasien'] = $id;
        $data['query']  = $this->logic->require_get($this->table, $d);
        $data['konten'] = $this->edit;
        $this->load->view('template',$data);
    }

    public function add(){

        $this->form_validation->set_message('in_list','Silahkan pilih option dahulu !');
        $this->form_validation->set_message('numeric','Hanya boleh karakter angka !');
        $this->form_validation->set_message('alpha','Hanya boleh karakter huruf !');
        $this->form_validation->set_message('required','belum di isi !');

        if ( $this->form_validation->run('pasien') == false ) {
            $this->form_add();
        } else {
            $no_nik = addslashes(htmlspecialchars(htmlentities($this->input->post('no_nik',true))));
            $nama = addslashes(htmlspecialchars(htmlentities($this->input->post('nama',true))));
            $j_kel = addslashes(htmlspecialchars(htmlentities($this->input->post('j_kelamin',true))));
            $tmp_lahir = addslashes(htmlspecialchars(htmlentities($this->input->post('tmp_lahir',true))));
            $tgl_lahir = addslashes(htmlspecialchars(htmlentities($this->input->post('tgl_lahir',true))));
            $telepon = addslashes(htmlspecialchars(htmlentities($this->input->post('telepon',true))));
            $alamat = addslashes(htmlspecialchars(htmlentities($this->input->post('alamat',true))));
            $agama = addslashes(htmlspecialchars(htmlentities($this->input->post('agama',true))));
            $penjamin = addslashes(htmlspecialchars(htmlentities($this->input->post('i_penjamin',true))));
            $pekerjaan_pasien = addslashes(htmlspecialchars(htmlentities($this->input->post('pekerjaan_pasien',true))));
            $dept_bagian = addslashes(htmlspecialchars(htmlentities($this->input->post('dept_bagian',true))));
            $telp_kantor = addslashes(htmlspecialchars(htmlentities($this->input->post('telp_kantor',true))));
            $email = addslashes(htmlspecialchars(htmlentities($this->input->post('email',true))));
            $menikah = addslashes(htmlspecialchars(htmlentities($this->input->post('s_menikah',true))));
            $gol_darah = addslashes(htmlspecialchars(htmlentities($this->input->post('g_darah',true))));
            $brt_badan = addslashes(htmlspecialchars(htmlentities($this->input->post('brt_badan',true))));
            $tng_badan = addslashes(htmlspecialchars(htmlentities($this->input->post('tng_badan',true))));
            $nama_pngjwb = addslashes(htmlspecialchars(htmlentities($this->input->post('nama_pngjwb',true))));
            $pkj_pngjwb = addslashes(htmlspecialchars(htmlentities($this->input->post('pjk_pngjwb',true))));
            $hub_pngjwb = addslashes(htmlspecialchars(htmlentities($this->input->post('hub_pngjwb',true))));
            $bpjs = addslashes(htmlspecialchars(htmlentities($this->input->post('bpjs',true))));
        
            $data = array(
                            'kd_pasien'     => getAutoNumber('tbl_pasien', 'kd_pasien', 'PAS',7),
                            'nama_pasien'   => $nama,
                            'tempat_lahir'  => $tmp_lahir,
                            'tgl_lahir'     => $tgl_lahir, 
                            'gender'        => $j_kel, 
                            'alamat'        => $alamat, 
                            'no_telp'       => $telepon, 
                            'no_ktp'        => $no_nik,
                            'agama'         => $agama, 
                            'instansi_penjamin' => $penjamin,
                            'pekerjaan_pasien' => $pekerjaan_pasien,
                            'dept_bagian' => $dept_bagian,
                            'telp_kantor' => $telp_kantor,
                            'email' => $email,
                            'menikah' => $menikah,
                            'gol_darah' => $gol_darah,
                            'brt_badan' => $brt_badan,
                            'tng_badan' => $tng_badan,
                            'nama_pngjwb' => $nama_pngjwb,
                            'pkj_pngjwb' => $pkj_pngjwb,
                            'hub_pngjwb' => $hub_pngjwb,
                            'bpjs' => $bpjs
                        );
            $row = $this->logic->require_get($this->table,$data);
    
            if ($row->num_rows() > 0) {
                $this->session->set_flashdata('alert','<p class="alert alert-warning">Data sudah tersedia</p>');
                redirect('tambah-pasien');
            }else{
                $this->session->set_flashdata('alert','<div class="alert alert-success alert-dismissible fade show" role="alert"><strong>Data berhasil di simpan</strong><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
                $this->logic->add($this->table,$data);
                redirect('pasien');
            }
        }
    }

    public function edit()
    {

        $kode = addslashes(htmlspecialchars(htmlentities($this->input->post('id', true))));
        $no_nik = addslashes(htmlspecialchars(htmlentities($this->input->post('no_nik', true))));
        $nama = addslashes(htmlspecialchars(htmlentities($this->input->post('nama', true))));
        $j_kel = addslashes(htmlspecialchars(htmlentities($this->input->post('j_kelamin', true))));
        $tmp_lahir = addslashes(htmlspecialchars(htmlentities($this->input->post('tempat_lahir', true))));
        $tgl_lahir = addslashes(htmlspecialchars(htmlentities($this->input->post('tgl_lahir', true))));
        $telepon = addslashes(htmlspecialchars(htmlentities($this->input->post('telepon', true))));
        $alamat = addslashes(htmlspecialchars(htmlentities($this->input->post('alamat', true))));
        $agama = addslashes(htmlspecialchars(htmlentities($this->input->post('agama', true))));
        $penjamin = addslashes(htmlspecialchars(htmlentities($this->input->post('i_penjamin', true))));
        $pekerjaan_pasien = addslashes(htmlspecialchars(htmlentities($this->input->post('pekerjaan_pasien',true))));
        $dept_bagian = addslashes(htmlspecialchars(htmlentities($this->input->post('dept_bagian',true))));
        $telp_kantor = addslashes(htmlspecialchars(htmlentities($this->input->post('telp_kantor',true))));
        $email = addslashes(htmlspecialchars(htmlentities($this->input->post('email',true))));
        $menikah = addslashes(htmlspecialchars(htmlentities($this->input->post('s_menikah',true))));
        $gol_darah = addslashes(htmlspecialchars(htmlentities($this->input->post('g_darah',true))));
        $brt_badan = addslashes(htmlspecialchars(htmlentities($this->input->post('brt_badan',true))));
        $tng_badan = addslashes(htmlspecialchars(htmlentities($this->input->post('tng_badan',true))));
        $nama_pngjwb = addslashes(htmlspecialchars(htmlentities($this->input->post('nama_pngjwb',true))));
        $pkj_pngjwb = addslashes(htmlspecialchars(htmlentities($this->input->post('pjk_pngjwb',true))));
        $hub_pngjwb = addslashes(htmlspecialchars(htmlentities($this->input->post('hub_pngjwb',true))));
        $bpjs = addslashes(htmlspecialchars(htmlentities($this->input->post('bpjs',true))));

        $data = array(
            'nama_pasien'  => $nama,
            'tempat_lahir'     => $tmp_lahir,
            'tgl_lahir'  => $tgl_lahir,
            'gender'  => $j_kel,
            'alamat'  => $alamat,
            'no_telp'  => $telepon,
            'no_ktp'  => $no_nik,
            'agama'   => $agama,
            'instansi_penjamin' => $penjamin,
            'pekerjaan_pasien' => $pekerjaan_pasien,
            'dept_bagian' => $dept_bagian,
            'telp_kantor' => $telp_kantor,
            'email' => $email,
            'menikah' => $menikah,
            'gol_darah' => $gol_darah,
            'brt_badan' => $brt_badan,
            'tng_badan' => $tng_badan,
            'nama_pngjwb' => $nama_pngjwb,
            'pkj_pngjwb' => $pkj_pngjwb,
            'hub_pngjwb' => $hub_pngjwb,
            'bpjs' => $bpjs

        );
        $id['kd_pasien'] = $kode;
        $this->logic->update($this->table, $data, $id);
        $this->session->set_flashdata('alert', '<div class="alert alert-success alert-dismissible fade show" role="alert"><strong>
        Data berhasil diubah
        </strong><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
        redirect('pasien');
    }

    public function delete($id)
    {
        $where['kd_pasien'] = $id;
        $this->logic->delete($this->table, $where);
        $this->session->set_flashdata('alert', '<div class="alert alert-success alert-dismissible fade show" role="alert"><strong>Data berhasil dihapus</strong><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
        redirect('pasien');
    }

    public function search()
    {
        $nama = addslashes(htmlspecialchars(htmlentities($this->input->post('search', true))));
        $no_nik = addslashes(htmlspecialchars(htmlentities($this->input->post('search', true))));
        $tgl = addslashes(htmlspecialchars(htmlentities($this->input->post('search', true))));

        $search = [
            'nama_pasien'      => $nama,
            'no_ktp'    => $no_nik,
            'tgl_lahir' => $tgl
        ];

        $data['query'] = $this->logic->search($this->table, $search);

        $data['konten'] = $this->view;
        $this->load->view('template', $data);
    }

    
}