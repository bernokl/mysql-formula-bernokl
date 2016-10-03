include:
  - mysql-server.python
  - mysql-server

random_db:
  mysql_database.present:
    - name: test_db
    - character_set: utf8
    - collate: utf8_general_ci
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8

berno:
  mysql_user.present:
    - host: localhost
    - password: bobcat
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8

berno_mysql:
   mysql_grants.present:
    - grant: all
    - database: '*.*'
    - user: berno
    - host: localhost
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8

