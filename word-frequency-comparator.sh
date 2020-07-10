sudo apt-get update
sudo apt-get install postgresql
sudo service postgresql start
sudo sudo -u postgres psql
# \password
# \q

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev postgresql-client-common postgresql-client libpq-dev software-properties-common

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

# install webpack
sudo -u postgres createuser -s ubuntu
sudo -u postgres createdb ubuntu
sudo su postgres
psql
ALTER USER "ubuntu" WITH SUPERUSER;
Ctrl-D
exit

sudo su postgres
psql
CREATE ROLE ali_m_d WITH LOGIN PASSWORD 'ka76wr';
CREATE DATABASE word_frequency_comparator_development OWNER ali_m_d;
Ctrl-D
exit
