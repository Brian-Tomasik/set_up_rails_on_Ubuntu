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
sudo apt-get -y install postgresql-9.3 libpq-dev