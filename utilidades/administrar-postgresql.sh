# exemplos de criacao de banco de dados
CREATE DATABASE lusiadas;
CREATE DATABASE sales OWNER salesapp TABLESPACE salesspace;
CREATE DATABASE music ENCODING 'LATIN1' TEMPLATE template0;

# alterando dono do banco
ALTER DATABASE name OWNER TO new_owner;

# alterando senha do usuario
alter user postgres with encrypted password 'senha';
