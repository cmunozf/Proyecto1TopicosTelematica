# README

Como correr en ubuntu (VirtualBox)

1-
Antes de iniciar la maquina se debe entrar a la configuracion de esta, en pestaña RED
Cambiar conectado a "NAT" por "Adaptador Puente"

Esto con el fin de que se pueda ver el proyecto desde la LAN

2-
Al iniciar la maquina virtual ubuntu se debe tener instalado previamente ruby, rails y gemas necesarias.
Si su maquina no cuenta con estos, puede instalar la siguiente serie de comandos.

COMANDOS
__________________________________________________________________________________

sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

cd

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

exec $SHELL

rbenv install 2.4.0

rbenv global 2.4.0

ruby -v

gem install bundler

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

sudo apt-get install -y nodejs

gem install rails -v 5.0.1

rails -v

sudo apt-get install libpq-dev

gem install pg

________________________________________________________________________________________


3-
Descargar el proyecto y actualizar el bundle
__________________________________________________________________________________

git clone https://github.com/cmunozf/Proyecto1TopicosTelematica.git

cd Proyecto1TopicosTelematica

bundle update
___________________________________________________________________________________

4-
Mirar la direccion ip de la maquina virtual 

ifconfig -a


5-
Luego de tener en cuenta la direccion correr el programa

rails s

6-
Abrir un explorador en la red LAN e ir a la direccion

http://(ip_virtualbox):3000

ip_virtualbox: es la ip que se vio anteriormente con el comando ifconfig -a
