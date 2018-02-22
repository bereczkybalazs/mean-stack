cd /vagrant
npm install --no-bin-links
forever start -c nodemon /vagrant/src/server.js
sudo service mongodb restart
