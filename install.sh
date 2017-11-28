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
}

function install_vim() {
    sudo apt-get install vim
    install_vundle
}

# Remember that it is necessary to change .vimrc
function install_vundle() {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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

# Developer tools
#function install_developer_tools() {
#
#}
#
## Commodity tools
#function install_commodity_tools() {
#
#}
head_install_mpv
