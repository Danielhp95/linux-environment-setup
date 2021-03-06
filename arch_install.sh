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

function install_tmux() {
    yay -S tmux
}

function install_ripgrep() {
    yay -S ripgrep
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

function install_exa() {
    yay -S exa
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

function install_gotop() {
    # System monitoring tool
    yay -S gotop
}

function install_vim() {
    copy_vimrc_file
    install_vim_plugins
}

function copy_vimrc_file() {
    echo "TODO"
}

function install_vim_plugins() {
    vim +PluginUpdate +qall
}

function install_i3_alternating_layouts() {
    # NOT WORKING
    sudo pip install i3-py
    git clone https://github.com/olemartinorg/i3-alternating-layout ~/.config/i3/scripts/
}


function install_coc_vim_python() {
    pip install python-language-server
    pip install 'python-language-server[rope]'
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

function install_omnipause() {
    yay -S python2-dbus
    git clone https://github.com/mel00010/OmniPause
    cd OmniPause/
    sudo make install
    cd ..
    rm -rf OmniPause/
}

function install_entr() {
    yay -S entr
}

function install_jekyll() {
    yay -S rubygems
    gem update
    gem install jekyll
    gem install bundler
    bundle update --bundler
    # remember that it is needed to extend $PATH
    # PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
}

function install_all() {
    install_yay
    install_oh_my_zsh
    install_rofi
    install_tmux

    # Fonts
    install_fira_code_font
    install_font_awesome

    # Aesthetics
    install_wpgtk
    install_compton_tryone

    # Small utilities
    install_bat
    install_exa
    install_feh
    install_xcape
    install_xclip
    install_silver_searcher
    install_cmake
    install_universal_ctags
    install_maim
    install_omnipause
    install_entr
    install_gotop

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
    install_jekyll
    install_ripgrep

    # Change shell to zsh
    chsh -s /usr/bin/zsh
}

install_all
