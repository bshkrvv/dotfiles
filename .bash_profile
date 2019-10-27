# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export EDITOR=vim
export PAGER=less

# Hardware accelerated video decoding
export LIBVA_DRIVER_NAME=i965
export VDPAU_DRIVER=va_gl

# Font scaling for QT apps
export QT_FONT_DPI=120
export QT_WAYLAND_FORCE_DPI=120
