# Contatos
Sistema feito em Ruby on Rails 6 como agenda de contatos para uso em sala de aula.
* Ruby version: 3.0.1
* Rails version: 6.1.3.1

### Configurando para testes em ambiente Development, com banco de dados local (sqlite3) e armazenamento local de fotos

Obs.: Como é uma configuração de testes, todos os comandos podem ser executados como root.
Instalar o NODE.JS, YARN, SQLITE3 e as dependências do Ruby
```
apt-get update
apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update
apt-get install git git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libmariadb-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn -y
```
 Baixar e compilar o Ruby 3.0.1
```
cd /root
wget http://ftp.ruby-lang.org/pub/ruby/3.0/ruby-3.0.1.tar.gz
tar -xzvf ruby-3.0.1.tar.gz
cd ruby-3.0.1/
./configure
make
sudo make install
ruby -v
gem install bundler --no-document
```
 Clonar a aplicação, instalar o Rails e dependências, criar o banco de dados e tabelas e subir a aplicação
```
mkdir /app
cd /app
git clone https://github.com/viniciusx7/contatos.git
cd /app/contatos
bundle install
rails -v
rails db:create
rails db:migrate
rails assets:precompile
rails server -b 0.0.0.0 -p 80
```
