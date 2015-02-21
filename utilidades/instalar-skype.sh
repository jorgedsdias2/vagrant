# remover versao anterior se houver
sudo apt-get remove skype skype-bin

# fazer download do skype
sudo wget http://download.skype.com/linux/skype-ubuntu-precise_4.2.0.11-1_i386.deb

# instalar skype na maquina
sudo dpkg -i skype-ubuntu*.deb; sudo apt-get -f install