#/bin/sh
mysql.server start
sudo nginx
RAILS_ENV=local bundle exec rails s
