web-dev
=======

Baseline Web Development Environment: v1.0.0
<h2>Features</h2>
<h3>Vagrant</h3>
<ul>
	<li>Uses Vagrant to create a Virtual Machine - Ubuntu 32 bit</li>
	<li>Updates Ubuntu</li>
	<li>Creates a share for /var/www</li>
	<li>Creates a custom ip and sets ports for debugging</li>
	<li>Installs Build Essentials</li>
</ul>
<h3>Server and Languages</h3>
<ul>
	<li>Apache</li>
	<li>php5</li>
	<li>php pear</li>
</ul>
<h3>Software and Utilities</h3>
<ul>
	<li>Git and sents color.ui to true</li>
	<li>Tmux</li>
</ul>
<h3>Debugging Server Config</h3>
<ul>
	<li>Installs xdebug ini</li>
	<li>Downloads, compiles, and makes xdebug.so</li>
</ul>
<h3>Vim</h3>
<ul>
	<li>Vim</li>
	<li>Vundle</li>
	<li>Vdebug - Custom ip and port settings</li>
	<li>Powerline</li>
	<li>Fugitive</li>
	<li>Colorscheme: Mustang</li>
	<li>Copies over my custom .vimrc</li>
</ul>
<h2>Install</h2>
<p><a href="http://www.vagrantup.com/">Vagrant</a> is require to create the development environment.</p>
<ol>
	<li>Clone this repo and type <code>vagrant up</code></li>
	<li>When the vitural machine has been created type <code>vagrant ssh</code></li>
	<li>Open vim <code>vim .</code></li>
	<li>Install vim plugins <code>:BundleInstall</code></li>
</ol>
<p>Feel free to fork and modify to your own settings</p>

