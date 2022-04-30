# Setup my development env on Ubuntu 22.04

```
sudo apt update
sudo apt upgrade -y
sudo apt install -y curl git vim openconnect openvpn build-essential
```

# Google Chrome
```
cd ~/Downloads
curl -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o chrome.deb
sudo dpkg -i chrome.deb
```

# Zsh
```
sudo apt install -y zsh
chsh -s $(which zsh)
sudo reboot now
```

# Ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# VsCode
```
cd ~/Downloads
curl -L https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64 -o vscode.deb

sudo dpkg -i vscode.deb

# launche vscode and sign in to sync extensions and settings
```

# DBeaver
```
sudo snap install dbeaver-ce
```

# Golang
```
cd ~/Downloads
GOLTS=`curl -L https://golang.org/VERSION\?m\=text`
curl -L "https://go.dev/dl/$GOLTS.linux-amd64.tar.gz" -o golang.tar.gz
tar -xvf golang.tar.gz
sudo mv go /usr/local/
echo export PATH=\$PATH:/usr/local/go/bin >> ~/.zshrc
source ~/.zshrc
go version
```

# Nodejs, NVM, ang Angular
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc
nvm install --lts
node -v
npm -v
npm install -g @angular/cli
```

# PHP
```
sudo apt install -y php php-fpm php-xml php-curl php-imagick php-gd php-pgsql php-mysql php-redis
```

# Nginx
```
sudo systemctl stop apache2
sudo apt purge -y apache2
sudo apt install -y nginx
```

# Postgresql
```
sudo apt install -y postgresql-14
```
# Mysql
```
sudo apt install -y mysql-server-8.0
```

# Docker
```
sudo apt update
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER
```

# Vmware
```
cd ~/Downloads
curl -L https://download3.vmware.com/software/WKST-PLAYER-1623-New/VMware-Player-Full-16.2.3-19376536.x86_64.bundle -o vmware-player.bundle
sudo chmod +x ./vmware-player.bundle
```

# Virtual Box
```
sudo apt install virtualbox
```

# AnyDesk
```
cd ~/Downloads
curl -L https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb -o anydesk.deb
sudo dpkg -i anydesk.deb
sudo apt install --fix-broken
```

# Telegram
```
sudo snap install telegram-desktop
```

# VLC
```
sudo snap install vlc
```

# Gnome shell
```
sudo apt install -y chrome-gnome-shell
```
