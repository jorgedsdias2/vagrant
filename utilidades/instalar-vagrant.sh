# instalar virtualbox
sudo apt-get install virtualbox

# instalar vagrant
sudo apt-get install vagrant

# corrigir problema com dkms
# sudo apt-get install linux-headers-$(uname -r)
# sudo dpkg-reconfigure virtualbox-dkms

# baixar box precise64
vagrant box add precise64 http://files.vagrantup.com/precise64.box

# inicializar box
# vagrant init precise64

# subir VM e instalar pacotes
vagrant up --provision

# acessar VM
vagrant ssh

#OBS IMPORTANTE
# 1 - NAO EXECUTAR postinstall.sh