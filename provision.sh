 # /bin/bash
sudo apt-get update
# Server and Languages
sudo apt-get install -y apache2
sudo apt-get install -y php5
# Zipping and URL Utilities
sudo apt-get install -y zip
sudo apt-get install -y bzip2
sudo apt-get install -y curl
sudo apt-get install -y git
# Debugger
sudo pecl install xdebug
# Server Configs
sudo cp /vagrant/xdebug.ini /etc/php5/apache2/conf.d
sudo /etc/init.d/apache2 restart
# Vim Setup And Config
sudo apt-get install -y vim
git clone https://github.com/gmarik/vundle.git /home/vagrant/ .vim/bundle/vundle
cp /vagrant/.vimrc /home/vagrant
sudo chown vagrant /home/vagrant/.vim
sudo chown vagrant /home/vagrant/.vimrc
