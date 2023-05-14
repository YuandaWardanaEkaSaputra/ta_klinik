<style type="text/css">
    table tr td:nth-child(1) {
        font-weight: bold;
        text-transform: uppercase;
    }
</style>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Form Add Pasien</h1>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-6 mt-2">
            <?= $this->session->flashdata('alert') ?>
        </div>
        <div class="col-sm-12 col-lg-12 col-md-12">
            <?= form_open('add-pasien') ?>
            <table class="table">
                <tr>
                    <td>
                        <a href="<?= base_url('pasien') ?>" class="btn btn-outline-warning" data-toggle="tooltip" data-placement="right" title="Kembali">
                            <i class="fas fa-redo"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>NO identitas</td>
                    <td>
                        <input type="text" name="no_nik" class="form-control" value="<?= set_value('no_nik') ?>">
                        <span class="helper-text text-danger text-uppercase"><?= form_error('no_nik') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>nama lengkap</td>
                    <td>
                        <input type="text" name="nama" class="form-control" value="<?= set_value('nama') ?>">
                        <span class="helper-text text-danger text-uppercase"><?= form_error('nama') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>jenis kelamin</td>
                    <td>
                        <select name="j_kelamin" class="form-control">
                            <option>-- Pilih --</option>
                            <option>pria</option>
                            <option>wanita</option>
                        </select>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('j_kelamin') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Tempat lahir</td>
                    <td>
                        <input type="text" name="tmp_lahir" class="form-control" value="<?= set_value('tmp_lahir') ?>">
                        <span class="helper-text text-danger text-uppercase"><?= form_error('nama') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>tgl lahir</td>
                    <td>
                        <input type="text" name="tgl_lahir" class="form-control datepicker" value="<?= set_value('tgl_lahir') ?>">
                        <span class="helper-text text-danger text-uppercase"><?= form_error('tgl_lahir') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>telepon</td>
                    <td>
                        <input type="number" name="telepon" class="form-control" value="<?= set_value('telepon') ?>">
                        <span class="helper-text text-danger text-uppercase"><?= form_error('telepon') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>alamat</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="alamat"><?= set_value('alamat') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('alamat') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Agama</td>
                    <td>
                        <input type="text" name="agama" class="form-control" value="<?= set_value('agama') ?>">
                        <span class="helper-text text-danger text-uppercase"><?= form_error('agama') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Menikah</td>
                    <td>
                        <select name="menikah" class="form-control">
                            <option>-- Pilih --</option>
                            <option>kawin</option>
                            <option>belum kawin</option>
                            <option>cerai</option>
                        </select>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('menikah') ?></span>
                    </td>
                </tr>
                    <td>Golongan Darah</td>
                    <td>
                        <select name="g_darah" class="form-control">
                            <option>-- Pilih --</option>
                            <option>a</option>
                            <option>b</option>
                            <option>ab</option>
                            <option>o</option>
                        </select>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('g_darah') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Berat Badan</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="brt_badan"><?= set_value('brt_badan') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('brt_badan') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Tinggi Badan</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="tng_badan"><?= set_value('tng_badan') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('tng_badan') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>instansi penjamin</td>
                    <td>
                        <select name="i_penjamin" class="form-control">
                            <option>-- Pilih --</option>
                            <option>Mandiri</option>
                            <option>asuransi</option>
                            <option>perusahaan penjamin pasien</option>
                        </select>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('i_penjamin') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Pekerjaan Pasien</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="pekerjaan_pasien"><?= set_value('pekerjaan_pasien') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('pekerjaan_pasien') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Dept/bagian</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="dept_bagian"><?= set_value('dept_bagian') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('dept_bagian') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Telepon Kantor</td>
                    <td>
                        <input type="number" name="telp_kantor" class="form-control" value="<?= set_value('telp_kantor') ?>">
                        <span class="helper-text text-danger text-uppercase"><?= form_error('telp_kantor') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="email"><?= set_value('email') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('email') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Nama Penanggung Jawab</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="nama_pngjwb"><?= set_value('nama_pngjwb') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('nama_pngjwb') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Pekerjaan Penanggung Jawab</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="pkj_pngjwb"><?= set_value('pkj_pngjwb') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('pkj_pngjwb') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Hubungan Penanggung Jawab</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="hub_pngjwb"><?= set_value('hub_pngjwb') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('hub_pngjwb') ?></span>
                    </td>
                </tr>
                <tr>
                    <td>Khusus Pasien BPJS(Instansi)</td>
                    <td>
                        <textarea cols=40 rows="5" class="form-control" name="bpjs"><?= set_value('bpjs') ?></textarea>
                        <span class="helper-text text-danger text-uppercase"><?= form_error('bpjs') ?></span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Simpan </button></td>
                </tr>
            </table>
            </form>
            <div class="section-body">
            </div>
    </section>
</div>
<!-- akhir main content -->