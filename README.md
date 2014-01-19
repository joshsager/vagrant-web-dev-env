web-dev
=======

Baseline Web Development Environment: v1.0.2
<h2>Features</h2>
<h3>Vagrant</h3>
<ul>
	<li>Uses Vagrant to create a Virtual Machine - Ubuntu 32 bit</li>
	<li>Updates Ubuntu</li>
	<li>Creates a share for /var/www</li>
	<li>Creates a custom ip and sets ports for debugging</li>
	<li>Installs Build Essentials</li>
</ul>
<h3>Server, Languages and Environments</h3>
<ul>
	<li>Apache</li>
	<li>php5</li>
	<li>php pear</li>
	<li>rvm</li>
	<li>ruby 1.9.2</li>
	<li>gem bundler</li>
</ul>
<h3>Software and Utilities</h3>
<ul>
	<li>Git and sets color.ui to true</li>
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
	<li>Clone this repo and type <code>vagrant up</code> in terminal.</li>
	<li>When the vitural machine has been created type <code>vagrant ssh</code> in terminal. This will log you into the virtual machine's cammand line.</li>
	<li>Open vim by typing <code>vim .</code> in terminal.</li>
	<li>Install vim plugins by typing <code>:BundleInstall</code> in vim.</li>
	<li>Create web a project folder with a GEMFile for things like compass, breakpoint etc.</li>
	<li>Type <code>install bundle</code> in terminal.</li>
	<li>Code Code Code Code</li>
</ol>
<p>Feel free to fork and modify to your own settings</p>

