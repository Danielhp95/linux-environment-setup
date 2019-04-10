#!/bin/bash

function install_yay() {
    pacman -S yay
}

function install_xclip() {
    yay -S xclip
}

function install_firefox() {
    yay -S firefox
}

function install_oh_my_zsh() {
    # Install zsh
    yay -S zsh
    # Installs oh_my_zsh
    curl -L http://install.ohmyz.sh | sh
    # Makes zsh default terminal
    chsh -s $(which zsh)
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
   sudo pip install flake8
}

function install_kitty_terminal() {
   yay -S kitty
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

function install_vim() {
    copy_vimrc_file
    install_vundle
    install_vim_plugins
}

function copy_vimrc_file() {
    echo "TODO"
}

# Remember that it is necessary to have the correct vimrc
function install_vundle() {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

function install_vim_plugins() {
    vim +PluginUpdate +qall
    python ~/.vim/bundle/YouCompleteMe/install.py --all
}


#########
# Fonts #
#########
function install_fira_code_font() {
    yay -S otf-fira-code
}

function install_font_awesome() {
    yay -S ttf-font-awesome-4
}

#####################
# Images / Pictures #
#####################
function install_feh() {
    yay -S feh
}

function install_maim() {
    yay -S maim
}

function install_compton_tryone() {
    yay -S compton-tryone-git
}

function install_all() {
    install_yay
    install_oh_my_zsh
    install_rofi

    # Fonts
    install_fira_code_font
    install_font_awesome

    # Aesthetics
    install_wpgtk
    install_compton_tryone

    # Small utilities
    install_bat
    install_feh
    install_xcape
    install_xclip
    install_silver_searcher
    install_cmake
    install_universal_ctags
    install_maim

    # VIM
    install_vim

    # Programming languages
    install_pip
    install_ipython
    install_flake8

    install_latex

    # Personal usage
    install_firefox
    install_telegram
    install_mpv
    install_tlp
    install_zathura
    install_kitty
}

install_all
