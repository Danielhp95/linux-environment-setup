#!/bin/bash

function install_yay() {
    pacman -S yay
}

function install_oh_my_zsh() {
    # Install zsh
    yay -S zsh
    # Installs oh_my_zsh
    curl -L http://install.ohmyz.sh | sh
    # Makes zsh default terminal
    chsh -s $(which zsh)
}

function install_feh() {
    yay -S feh
}

function install_telegram() {
    yay -S telegram-desktop-bin
}


function install_xcape() {
    yay -s xcape-git
}

function install_wpgtk() {
    yay -S wpgtk-git
}

function install_bat() {
    yay -S bat
}

function install_rofi() {
    yay -S rofi
    yay -S rofi-dmenu
}

function install_mpv() {
    yay -S mpv
}

# Power (battery) management
function install_tlp() {
    yay -S tlp
}

function install_zathura() {
    yay -S zathura
    yay -S zathura-pdf-mupdf
}

function install_pip() {
   yay -S python-pipenv
}

function install_ipython() {
   yay -S ipython
}

# Big package. 1.5GB
function install_latex() {
   yay -S texlive-most
}

# Syntax checker for python
function install_flake8() {
   pip install flake8
}

function install_silver_searcher() {
   yay -S the_silver_searcher
}

function install_universal_ctags() {
   yay -S universal-ctags-git
}

function install_cmake() {
   yay -S cmake
}

# Remember that it is necessary to change .vimrc
function install_vundle() {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

function install_all() {
    install_yay
    install_oh_my_zsh
    install_rofi

    # Aesthetics
    # TODO powerfont
    install_wpgtk

    # Small utilities
    install_bat
    install_feh
    install_xcape
    install_silver_searcher
    install_universal_ctags
    install_cmake

    # Programming languages
    install_pip
    install_ipython
    install_flake8

    install_latex

    # Personal usage
    install_telegram
    install_mpv
    install_tlp
    install_zathura
}
