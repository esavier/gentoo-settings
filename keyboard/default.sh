# put it somewhere like that:
# /etc/X11/xinit/xinitrc.d/60-keyboard.sh# put it somewhere like that
#
# remember to make it executable

setxkbmap -option grp:alt_space_toggle,grp_led:scroll,compose:menu,caps:hyper,eurosign:e -layout 'pl,ru' -variant ',,^Conetic_winkeys'
