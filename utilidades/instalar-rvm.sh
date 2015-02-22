curl --help

curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm -v

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc

source ~/.bashrc

type rvm | head -n 1

rvm requirements

rvm list known

rvm install 2.0.0 --autolibs=packages

ruby -v

rvm install 1.9.3 --autolibs=packages

rvm list gemsets

rvm use 'versão' --default

rake --version
gem update rake
gem --version
gem update --system

gem install rails

rails new 'projeto'

rails s -b 0.0.0.0

#curl -sSL https://get.rvm.io | bash -s $1