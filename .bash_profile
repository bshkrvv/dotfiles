# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Paths to search for executables and shared libraries
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64:/usr/lib

# Commands to run web browser and text editor
export BROWSER=firefox
export EDITOR=vim
export PAGER=less

# Hardware accelerated video decoding
export LIBVA_DRIVER_NAME=i965
export VDPAU_DRIVER=va_gl

# Font scaling for QT apps
export QT_FONT_DPI=120
