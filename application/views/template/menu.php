<li <?php echo ($this->uri->segment(1) == '' || $this->uri->segment(1) == 'home') ? 'class="active"' : ''; ?>><a href="<?php echo site_url(); ?>"><i class="fa fa-home"></i> <span>Home</span></a></li>

<li <?php echo ($this->uri->segment(1) == 'kriteria' || $this->uri->segment(1) == 'subkriteria') ? 'class="active"' : ''; ?>><a href="<?php echo site_url('kriteria'); ?>"><i class="fa fa-bar-chart"></i> <span>Kriteria</span></a></li>

<li <?php echo $this->uri->segment(1) == 'alternatif' ? 'class="active"' : ''; ?>><a href="<?php echo site_url('alternatif'); ?>"><i class="fa fa-child"></i> <span>Alternatif</span></a></li>

<li <?php echo $this->uri->segment(1) == 'penilaian' ? 'class="active"' : ''; ?>><a href="<?php echo site_url('penilaian'); ?>"><i class="fa fa fa-balance-scale"></i> <span>Penilaian</span></a></li>

<li <?php echo $this->uri->segment(1) == 'hasil' ? 'class="active"' : ''; ?>><a href="<?php echo site_url('hasil'); ?>"><i class="fa fa-list"></i> <span>Hasil</span></a></li>
<!-- <li <?php echo $this->uri->segment(1) == 'admin' ? 'class="active"' : ''; ?>><a href="<?php echo site_url('admin'); ?>"><i class="fa fa-user"></i> <span>Tambah User</span></a></li> -->
<p>
<li><a href="<?php echo site_url('Auth/Utama/logout'); ?>" onclick = "return confirm('Apakah anda yakin ingin keluar?');"><i class="fa fa-sign-out"></i> <span>Logout</span>
</a></li>
</p>