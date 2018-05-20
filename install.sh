#!/bin/bash

function head_install_chrome() {
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 	
    sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable
} 

function head_install_vlc() {
    sudo apt-get install vlc
}

function head_install_mpv() {
    sudo add-apt-repository ppa:mc3man/mpv-tests
    sudo apt update 
    sudo apt install mpv
}

function head_install_spotify() {
    # 1. Add the Spotify repository signing keys to be able to verify downloaded packages
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410

    # 2. Add the Spotify repository
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

    # 3. Update list of available packages
    sudo apt-get update

    # 4. Install Spotify
    sudo apt-get install spotify-client
}

function install_pip() {
    sudo apt-get install python-pip
    sudo apt-get install python-pip3
}

function install_ipython() {
    sudo pip install ipython
}

function install_pipenv() {
    sudo pip3 install pew
    sudo pip install pipenv
}

# Will need to change when new version arrives
function install_python36() {
    sudo add-apt-repository ppa:jonathonf/python-3.6
    sudo apt update
    sudo apt install python3.6
    sudo apt install python3.6-dev
    wget https://bootstrap.pypa.io/get-pip.py
    sudo python3.6 get-pip.py
    rm get-pip.py
}

function install_openssh_server() {
    sudo apt-get install openssh-server
}

function install_latex_compiler() {
    sudo apt-get install texlive-latex-base
    sudo apt-get install lacheck
    # sudo apt-get install texlive CHECK IF THIS IS NECESSARY
}

function install_vim() {
    sudo apt-get install vim
    install_vundle
    install_you_complete_me
}

# Remember that it is necessary to change .vimrc
function install_vundle() {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

# The --all flag will probably fail due to dependencies. Fix as appropiate
function install_you_complete_me() {
    sudo apt-get install build-essential cmake
    sudo apt-get install python-dev python3-dev
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --all
    cd -
}

function install_unzip() {
    sudo apt-get install unzip
}

function install_mosh() {
    sudo apt-get install mosh
}

# Need to set some env variables
function install_jdk9() {
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install oracle-java9-installer
    sudo apt install oracle-java9-set-default
}

function install_telegram() {
    sudo add-apt-repository ppa:atareao/telegram
    sudo apt-get update
    sudo apt-get install telegram

}

function install_mono() {
    sudo apt-get install mono-complete
}

function install_nuget() {
    sudo apt install nuget
}

function install_skype() {
    sudo apt install apt-transport-https
    curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
    echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
    sudo apt update
    sudo apt install skypeforlinux
}

# Used mainly for vim airline fonts.
function install_powerline() {
    apt-get install python-pip
    sudo pip install git+git://github.com/Lokaltog/powerline
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    sudo mv PowerlineSymbols.otf /usr/share/fonts/
    # fc-cache builds font information. -v for verbose, -f for forcing even up to date cached builds.
    sudo fc-cache -vf /usr/share/fonts/
    sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
}

function install_docker() {
    # Taken from official page: https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository
    sudo apt-get update
    sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get install -y docker-ce
}

# Developer tools
#function install_developer_tools() {
#
#}
#
## Commodity tools
#function install_commodity_tools() {
#
#}
install_docker
