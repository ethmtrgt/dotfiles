##run_once is a script in /usr/bin that prevents running script if it is running already
##

## Load appearance settings
xsetroot -cursor_name left_ptr &
xsetroot -solid "#151515"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0" &
xrdb merge .Xresources &
## Wallpaper. Nitrogen just draws wallpaper, 
# sh ~/.fehbg &
## compositing. Required for shadows, transparency and stuff. 
# Alter compton settings if using intel graphics
GRAPHIC_CARD=$(lspci | grep -i "vga" | sed 's/.*://' | sed 's/(.*//' | sed 's/^[ \t]*//')
if [[ $(echo $GRAPHIC_CARD | grep -i 'intel\|lenovo') != "" ]]; then MCODE='initrd=\intel-ucode.img'
  sed -i 's/"xrender"/"glx"/' ~/.config/picom.conf
  grep -q 'vsync = true;' ~/.config/picom.conf || echo 'vsync = true;' >> ~/.config/picom.conf
fi
## Reduces flicker. Disabling saves resources.
picom -b &
## enable local fonts in .fonts directory
xset +fp /usr/share/fonts/local &
xset +fp /usr/share/fonts/misc &
xset +fp ~/.fonts &
xset fp rehash &
fc-cache -fv &
## Automount removable media
devmon &
## powersaving options
xset s off &
xset s noblank &
xset s noexpose &
xset c on &
xset -dpms &
xbacklight -set 50 &
## Run screenlock when suspending
light-locker &
## Make monitor settings persist between reboots
eval $(awk -F'=' '/Exec=/ {print $2}' ~/.config/autostart/lxrandr-autostart.desktop) &
## Map super keys to trigger when used alone
xcape -e 'Super_L=Super_L|Shift_L|space;Super_R=Super_R|Shift_R|z' &
## Gnome keyring
gnome-keyring-daemon &
thunar --daemon &
dunst &
greenclip daemon &
setxkbmap -layout gb &
blueman-applet &

