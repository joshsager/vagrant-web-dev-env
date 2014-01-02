# /bin/bash
# Updates Ubuntu
sudo apt-get update
echo " ############################################## UPDATED"
# Build Essentials
sudo apt-get install -y build-essential
echo " ############################################## BUILD ESSENTIALS"
# Server and Languages
sudo apt-get install -y apache2
echo " ############################################## APACHE SERVER"
sudo apt-get install -y php5
echo " ############################################## PHP5"
sudo apt-get install -y php-pear # xdebug needs this to install via pecl
echo " ############################################## PHP PEAR"
##sudo apt-get install -y php5-dev
### Zipping and URL Utilities
##sudo apt-get install -y zip
##sudo apt-get install -y bzip2
##sudo apt-get install -y curl
sudo apt-get install -y git
echo " ############################################## GIT"
# Vdebug
sudo cp /vagrant/xdebug.ini /etc/php5/conf.d
echo " ############################################## COPY XDEBUG.INI"
sudo pecl install xdebug
echo " ############################################## INSTALL XDEBUG.SO"
# Vim Setup And Config
sudo apt-get install -y vim
echo " ############################################## INSTALL VIM"
# Vim Plugins
	if [ ! -d /home/vagrant/.vim/bundle/vundle ]
		then
		git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
	fi
echo " ############################################## INSTALL VIM - VUNDLE"
	if [ ! -d /home/vagrant/.vim/bundle/vdebug ]
		then
		git clone https://github.com/vim-scripts/Vdebug.git /home/vagrant/.vim/bundle/vdebug
	# copy my version of vdebug with custom ip address and custom ports
	sudo cp /vagrant/vdebug.vim /home/vagrant/.vim/bundle/vdebug/plugin/
	fi
echo " ############################################## INSTALL VIM - VDEBUG"
	if [ ! -d /home/vagrant/.vim/bundle/vim-powerline ]
	then
	git clone https://github.com/Lokaltog/vim-powerline.git /home/vagrant/.vim/bundle/vim-powerline
	fi
echo " ############################################## INSTALL VIM - POWERLINE"
	if [ ! -d /home/vagrant/.vim/bundle/vim-fugitive ]
	then
	git clone https://github.com/tpop/vim-fugitive.git /home/vagrant/.vim/bundle/vim-powerline
	fi
echo " ############################################## INSTALL VIM - FUGITIVE"
# Vim Settings
	if [ ! -d /home/vagrant/.vim/colors ]
		then
		mkdir /home/vagrant/.vim/colors
		wget https://raw.github.com/croaker/mustang-vim/master/colors/mustang.vim 
		mv mustang.vim /home/vagrant/.vim/colors
	fi
echo " ############################################## INSTALL MUSTANG COLOR SCHEME"
sudo cp /vagrant/.vimrc /home/vagrant
sudo chown vagrant /home/vagrant/.vimrc
sudo chown vagrant -R /home/vagrant/.vim
echo " ############################################## COPY .VIMRC - SET PERMISSIONS FOR .VIM & .VIMRC"
# Debugger
sudo /etc/init.d/apache2 restart
echo " ############################################## RESTARTED APACHE SERVER"
# vim +BundleInstall +qall
echo " ############################################## INITALIZED VIM - VUNDLE PLUGINS"
# Set Git Color to be True
git config --global color.ui true
# There has to be a better way than this -- too many errors at the command line vim +BundleInstall +aall!
