#!/bin/sh
TMPBG=~/Pictures/wallpaper1.jpg
dbus-send --print-reply --dest=com.github.chjj.compton.${DISPLAY/:/_} / \
    com.github.chjj.compton.opts_set string:no_fading_openclose boolean:false

dbus-send --print-reply --dest=com.github.chjj.compton.${DISPLAY/:/_} / \
    com.github.chjj.compton.opts_set string:unredir_if_possible boolean:false


fg_color=ffffffff
wrong_color=0C061Daa
highlight_color=de76f1ff
verif_color=de76f1ff
date_hour_color=DE76F1ff


i3lock -n --force-clock -i $TMPBG \
--ind-pos="w/2:h/2+400" --time-pos="w/2:h/2-5" --date-pos="w/2:h/2+55" --greeter-pos="w/2:h/2" \
--insidever-color=5f5f5f66 --insidewrong-color=$wrong_color --inside-color=5f5f5f00 \
--ringver-color=$verif_color --ringwrong-color=$wrong_color --ring-color=$fg_color \
--keyhl-color=$highlight_color --bshl-color=$highlight_color --separator-color=00000000 \
--date-color=$date_hour_color --time-color=$date_hour_color --greeter-color=$fg_color  \
--time-str="%H:%M" --time-size=120 \
--date-str="%a, %d %b" --date-size=35 \
--greeter-text="$date_now" --greeter-size=25 \
--line-uses-inside --radius 115 --ring-width 4 --indicator \
--verif-text=""  --wrong-text="" --noinput-text="" \
--clock --date-font="JetBrains Mono Nerd Font:Bold" --time-font="JetBrains Mono Nerd Font:Bold" \
--pass-media-keys


sleep 0.2
dbus-send --print-reply --dest=com.github.chjj.compton.${DISPLAY/:/_} / \
    com.github.chjj.compton.opts_set string:no_fading_openclose boolean:true
dbus-send --print-reply --dest=com.github.chjj.compton.${DISPLAY/:/_} / \
    com.github.chjj.compton.opts_set string:unredir_if_possible boolean:true
