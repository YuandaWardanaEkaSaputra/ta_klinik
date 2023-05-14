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
            <h1>Form edit pasien</h1>
        </div>
        <div class="col-sm-12 col-lg-12 col-md-12">
            <?= form_open('edit-pasien') ?>
            <table class="table">
                <?php foreach ($query->result() as $key) : ?>
                <tr>
                    <td>
                        <a href="<?= base_url('pasien') ?>" class="btn btn-outline-warning" data-toggle="tooltip" data-placement="right" title="Kembali">
                            <i class="fas fa-redo"></i></a>
                    </td>
                </tr>
                <input type="hidden" name="id" value="<?= $key->kd_pasien ?>">
                <tr>
                    <td>NO identitas</td>
                    <td><input type="text" name="no_nik" autofocus="on" class="form-control" value="<?= $key->no_ktp ?>"></td>
                </tr>
                <tr>
                    <td>nama lengkap</td>
                    <td>
                        <input type="text" name="nama" class="form-control" value="<?= $key->nama_pasien ?>">
                    </td>
                </tr>
                <tr>
                    <td>jenis kelamin</td>
                    <td>
                        <select name="j_kelamin" class="form-control" required>
                            <option>-- Pilih --</option>
                            <?php if ($key->gender == 'pria') : ?>
                            <option value="pria" selected>Pria</option>
                            <option value="wanita">Wanita</option>
                            <?php else : ?>
                            <option value="wanita" selected>Wanita</option>
                            <option value="pria">Pria</option>
                            <?php endif ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>tempat lahir</td>
                    <td><input type="text" name="tempat_lahir" class="form-control" value="<?= $key->tempat_lahir ?>"></td>
                </tr>
                <tr>
                    <td>tgl lahir</td>
                    <td>
                        <input type="date" name="tgl_lahir" class="form-control" value="<?= $key->tgl_lahir ?>">
                    </td>
                </tr>
                <tr>
                    <td>telepon</td>
                    <td>
                        <input type="text" name="telepon" class="form-control" value="<?= $key->no_telp ?>">
                    </td>
                </tr>
                <tr>
                    <td>alamat</td>
                    <td>
                        <textarea cols=40 rows="5" name="alamat" class="form-control"><?= $key->alamat ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Agama</td>
                    <td>
                        <textarea cols=40 rows="5" name="agama" class="form-control"><?= $key->agama ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Menikah</td>
                    <td>
                        <select name="menikah" class="form-control" required>
                            <option>-- Pilih --</option>
                            <?php if ($key->menikah == 'kawin') : ?>
                            <option value="kawin" selected>Kawin</option>
                            <option value="belumkawin">Belum Kawin</option>
                            <option value="cerai">Cerai</option>
                            <?php else : ?>
                            <option value="cerai" selected>Cerai</option>
                            <option value="belumkawin">Belum Kawin</option>
                            <option value="kawin">Kawin</option>
                            <?php endif ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Golongan Darah</td>
                    <td>
                        <select name="g_darah" class="form-control" required>
                            <option>-- Pilih --</option>
                            <?php if ($key->gol_darah == 'a') : ?>
                            <option value="a" selected>A</option>
                            <option value="b">B</option>
                            <option value="ab">AB</option>
                            <option value="o">O</option>
                            <?php else : ?>
                            <option value="o" selected>O</option>
                            <option value="ab">AB</option>
                            <option value="b">B</option>
                            <option value="a">a</option>
                            <?php endif ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Berat Badan</td>
                    <td>
                        <textarea cols=40 rows="5" name="brt_badan" class="form-control"><?= $key->brt_badan ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Tinggi Badan</td>
                    <td>
                        <textarea cols=40 rows="5" name="tng_badan" class="form-control"><?= $key->tng_badan ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>instansi penjamin</td>
                    <td>
                        <select name="i_penjamin" class="form-control" required>
                            <option>-- Pilih --</option>
                            <?php if ($key->gender == 'asuransi') : ?>
                            <option value="asuransi" selected>Asuransi</option>
                            <option value="perusahaanpenjaminpasien">Perusahaan penjamin pasien</option>
                            <option value="mandiri">Madiri</option>
                            <?php else : ?>
                            <option value="mandiri">Mandiri</option>
                            <option value="perusahaanpenjaminpasien" selected>Perusahaan penjamin pasien</option>
                            <option value="asuransi">Asuransi</option>
                            <?php endif ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Pekerjaan Pasien</td>
                    <td>
                        <textarea cols=40 rows="5" name="pekerjaan_pasien" class="form-control"><?= $key->pekerjaan_pasien ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Dept/bagian</td>
                    <td>
                        <textarea cols=40 rows="5" name="dept_bagian" class="form-control"><?= $key->dept_bagian ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Telp Kantor</td>
                    <td>
                        <textarea cols=40 rows="5" name="telp_kantor" class="form-control"><?= $key->telp_kantor ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <textarea cols=40 rows="5" name="email" class="form-control"><?= $key->email ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Nama Penanggung Jawab</td>
                    <td>
                        <textarea cols=40 rows="5" name="email" class="form-control"><?= $key->nama_pngjwb ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Pekerjaan Penanggung Jawab</td>
                    <td>
                        <textarea cols=40 rows="5" name="email" class="form-control"><?= $key->pkj_pngjwb ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Hubungan Penanggung Jawab</td>
                    <td>
                        <textarea cols=40 rows="5" name="email" class="form-control"><?= $key->hub_pngjwb ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Khusus Pasien BPJS(Instansi)</td>
                    <td>
                        <textarea cols=40 rows="5" name="email" class="form-control"><?= $key->bpjs ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit" class="btn btn-warning"><i class="fas fa-pen"></i> Edit</button></td>
                </tr>
            </table>
            </form>
            <?php endforeach; ?>
            <div class="section-body">
            </div>
    </section>
</div>
<!-- akhir main content -->