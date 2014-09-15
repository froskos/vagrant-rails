#!/bin/bash
#install ruby

echo ""
echo "Installing ruby"
echo ""

apt-get install -y build-essential

git clone https://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
git clone https://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
/home/vagrant/.rbenv/bin/rbenv install 2.0.0-p481
/home/vagrant/.rbenv/bin/rbenv global 2.0.0-p481
gem install bundler