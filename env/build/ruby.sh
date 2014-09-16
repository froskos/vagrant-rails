#!/bin/bash
#install ruby - EXPERIMENTAL! NOT PROPERLY WORKING YET!!

echo ""
echo "Installing ruby"
echo ""

apt-get install -y build-essential

git clone https://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
git clone https://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /root/.bashrc
echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bashrcfr
echo 'eval "$(rbenv init -)"' >> /root/.bashrc


echo ""
echo "restarting shell!!!! @@@"
echo ""

source /home/vagrant/.bashrc

echo ""
echo "rbenv go go go!"
echo ""

/home/vagrant/.rbenv/bin/rbenv
/home/vagrant/.rbenv/bin/rbenv versions
/home/vagrant/.rbenv/bin/rbenv install 2.0.0-p481
/home/vagrant/.rbenv/bin/rbenv global 2.0.0-p481
gem install bundler

#check permission problems, as provisioning scripts are being run with root privileges!