<li <?php echo ($this->uri->segment(1) == '' || $this->uri->segment(1) == 'home') ? 'class="active"' : ''; ?>><a href="<?php echo site_url('home_user'); ?>"><i class="fa fa-home"></i> <span>Home</span></a></li>
<li <?php echo $this->uri->segment(1) == 'hasil' ? 'class="active"' : ''; ?>><a href="<?php echo site_url('auth/user'); ?>"><i class="fa fa-list"></i> <span>Hasil</span></a></li>
