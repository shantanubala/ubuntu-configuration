sudo apt-get update
sudo apt-get install vim git python python-setuptools python-dev build-essential golang -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

grep -q "^deb .*team-gcc-arm-embedded" /etc/apt/sources.list /etc/apt/sources.list.d/* || sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa

sudo apt-get install ruby python-pip nodejs npm libpq-dev golang python3-pip git vim unzip build-essential gcc cmake cppcheck vera++ python gcc-arm-embedded libcups2-dev printer-driver-dymo -y
sudo pip install nrfutil pip awscli urllib3[secure] -U
sudo pip install sh requests
sudo pip3 install sh requests

which hub || {
wget https://github.com/github/hub/releases/download/v2.3.0-pre9/hub-linux-amd64-2.3.0-pre9.tgz
tar -xzf hub-linux-amd64-2.3.0-pre9.tgz
cd hub-linux-amd64-2.3.0-pre9
sudo ./install
cd ..
}

sudo ln -s /usr/bin/nodejs /usr/bin/node

sudo npm cache clean -f
sudo npm install -g npm
sudo npm install -g n
sudo n stable

sudo npm install -g gulp
sudo npm install -g jshint

if [ -z `ssh-keygen -F github.com` ]; then
  ssh-keyscan -H github.com >> ~/.ssh/known_hosts
fi


# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client

# Install Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y
