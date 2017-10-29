            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Daftar Pelamar <button class="btn btn-success" data-toggle="modal" data-target="#add"><i class="fa fa-plus"></i></button>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Daftar Pelamar
                        </div>
                        <div>
                            <?= $this->session->flashdata('msg') ?>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <style type="text/css">
                                tr th, tr td {text-align: center;}
                            </style>
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>No.HP</th>
                                        <th>Email</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i=1; foreach ($pelamar as $row): ?>
                                    <tr>
                                        <td><?= $i ?></td>
                                        <td><?= $row->nama ?></td>
                                        <td><?= $row->no_hp ?></td>
                                        <td><?= $row->email ?></td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                                Aksi <span class="caret"></span></button>
                                                <ul class="dropdown-menu" role="menu">
                                                  <li><a href="#" data-toggle="modal" data-target="#input_nilai"><i class="fa fa-pencil"></i> Input Nilai</a></li>
                                                  <li><a href="<?= base_url('admin/hasil_penilaian') ?>"><i class="fa fa-eye"></i> Hasil Penilaian</a></li>
                                                  <li><a href="" onclick="delete_pelamar(<?= $row->id_pelamar ?>)"><i class="fa fa-trash"></i> Hapus </a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <?php $i++; endforeach; ?>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

            <div class="modal fade" tabindex="-1" role="dialog" id="add">
              <div class="modal-dialog" role="document">
                <?= form_open('admin/data_pelamar') ?>
               <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Tambah Data Pelamar</h4>
                  </div>
                  <div class="modal-body">
                        <div class="form-group">
                            <label for="Nama">Nama *</label>
                            <input type="text" class="form-control" name="nama" required>
                        </div>
                        <div class="form-group">
                            <label for="Upload Foto">Upload Foto</label>
                            <input type="file" name="foto">
                        </div>
                        <div class="form-group">
                            <label for="Tempat Lahir">Tempat Lahir *</label>
                            <input type="text" class="form-control" name="tempat_lahir" required>
                        </div>
                        <div class="form-group">
                            <label for="Tanggal Lahir">Tanggal Lahir *</label>
                            <input type="text" class="form-control" name="tanggal_lahir" required>
                        </div>
                        <div class="form-group">
                            <label for="Nomor HP">Nomor HP *</label>
                            <input type="text" class="form-control" name="no_hp" required>
                        </div>
                        <div class="form-group">
                            <label for="Email">Email *</label>
                            <input type="text" class="form-control" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="Alamat">Alamat *</label>
                            <textarea class="form-control" rows="3" name="alamat" required></textarea>
                        </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                    <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">
                  </div>
                  <?= form_close() ?>
                </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->


            <div class="modal fade" tabindex="-1" role="dialog" id="input_nilai">
              <div class="modal-dialog modal-sm" role="document">
                <?= form_open('admin/daftar_pelamar') ?>
               <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Input Nilai</h4>
                  </div>
                  <div class="modal-body">
                        <div class="form-group">
                            <label for="administrasi">Administrasi</label>
                            <select name="administrasi" id="" class="form-control form-md">
                                <option></option>
                                <option value="0.25">Tidak Ada Keahlian</option>
                                <option value="0.50">Kurang Ahli</option>
                                <option value="0.75">Ada Keahlian</option>
                                <option value="1">Banyak Keahlian</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="wawancara">Wawancara</label>
                            <select name="wawancara" id="" class="form-control">
                                <option></option>
                                <option value="0.25">Tidak Memadai</option>
                                <option value="0.50">Kurang Memadai</option>
                                <option value="0.75">Memadai</option>
                                <option value="1">Sangat Memadai</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="psikotes">Psikotes</label>
                            <select name="psikotes" id="" class="form-control">
                                <option></option>
                                <option value="0.25">Tidak Disarankan</option>
                                <option value="0.50">Kurang Disarankan</option>
                                <option value="0.75">Masih Dapat Disarankan</option>
                                <option value="1">Dapat Disarankan</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="mcu">MCU</label>
                            <select name="mcu" id="" class="form-control">
                                <option></option>
                                <option value="0.25">Tidak Sehat</option>
                                <option value="0.50">Kurang Sehat</option>
                                <option value="0.75">Sehat</option>
                                <option value="1">Sangat Sehat</option>
                            </select>
                        </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                    <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">
                  </div>
                  <?= form_close() ?>
                </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->



            <script>
                $(document).ready(function() {
                    $('#dataTables-example').DataTable({
                        responsive: true
                    });
                });

                function delete_pelamar(id_pelamar) {
                    $.ajax({
                        url: '<?= base_url('kasir/pelamar') ?>',
                        type: 'POST',
                        data: {
                            id_pelamar: id_pelamar,
                            delete: true
                        },
                        success: function() {
                            window.location = '<?= base_url('kasir/pelamar') ?>';
                        }
                    });
                }
            </script>