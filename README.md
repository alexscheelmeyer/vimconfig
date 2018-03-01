This is my config

To use it clone from github into .vim :

    git clone git://github.com/alexscheelmeyer/vimconfig ~/.vim

Remember to create the symlink for .vimrc :

    ln -s ~/.vim/vimrc ~/.vimrc
    
Init the submodules : 
    cd ~/.vim
    git submodule init
    git submodule update

Start vim and run :
    :PlugInstall


