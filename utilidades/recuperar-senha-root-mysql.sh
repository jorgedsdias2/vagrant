sudo /etc/init.d/mysql stop
sudo mysqld_safe --skip-grant-tables --skip-networking &
sudo mysql -u root
mysql> use mysql;
mysql> update user set password=PASSWORD("SENHA") where User='root';
mysql> flush privileges;
mysql> quit
sudo /etc/init.d/mysql stop
sudo /etc/init.d/mysql start
