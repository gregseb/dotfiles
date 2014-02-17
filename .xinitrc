#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
# Load virtualbox guest editions first
#/usr/bin/VBoxClient-all
#sudo VBoxClient-all &

# Initiate autocutsel to sync clipboards
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

# Custom... Load .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Custom... Load ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx

# Custom... Load i3 with startx
exec i3
