# The following commands are copied from https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-14-04

rbenv install -v 2.2.1
rbenv global 2.2.1

echo "gem: --no-document" > ~/.gemrc
gem install bundler

gem install rails
rbenv rehash
rails -v

sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get -y update
sudo apt-get -y install nodejs

# Now install postgresql, based on https://gorails.com/setup/ubuntu/15.04
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get -y update
sudo apt-get -y install postgresql-common
sudo apt-get -y install postgresql-9.4 libpq-dev
sudo apt-get -y install postgresql postgresql-contrib # needed because of this: http://askubuntu.com/questions/354686/postgres-doesnt-have-hstore-extension

# Install gmate text editor
sudo apt-add-repository -y ppa:ubuntu-on-rails/ppa
sudo apt-get -y update
sudo apt-get -y install gedit-gmate