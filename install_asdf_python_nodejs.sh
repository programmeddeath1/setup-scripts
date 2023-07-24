version_nodejs=""
version_python=""

sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git zip unzip make  bzip2  libreadline6-dev openssl python3-pip python3-venv python3-setuptools
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
source ~/.bashrc

#Install nodejs and python plugins for asdf
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add python

sudo apt update

asdf install nodejs $version_nodejs
asdf install python $version_python
asdf global nodejs $version_nodejs
asdf global python $version_python
