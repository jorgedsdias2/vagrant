# instalar vbguest
vagrant plugin install vagrant-vbguest

# subir VM
vagrant up

# acessar vm
vagrant ssh

# atualizar guest
sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions

# sair da VM
exit

# reiniciar VM
vagrant reload

# em um so comando testar
#vagrant up; vagrant ssh -c 'sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions'; vagrant reload
