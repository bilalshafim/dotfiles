#!/usr/bin/env bash

tmpbg="$HOME/.config/i3/lock-2.jpg"
# icon='/home/bilalshafi/Downloads/ascii_art/ascii-art (33).png'

# (( $# )) && { icon=$1; }
#
# scrot "$tmpbg"
# convert "$tmpb" -scale 10% -scale 1000% "$tmpbg"
# convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
# i3lock -i "$tmpbg"

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#00000000'
KEY='#8a8ea800'
DEF='#282a36'
WHITE='#ffffff'
TEXT=$WHITE
WRONG='#ff555522'
VERIFYING='#41445800'

i3lock -n -i "$tmpbg" -L \
    --insidever-color=$CLEAR \
    --ringver-color=$VERIFYING \
    \
    --insidewrong-color=$WRONG \
    --ringwrong-color=$DEFAULT \
    \
    --inside-color=$CLEAR \
    --ring-color=$DEFAULT \
    --line-color=$BLANK \
    --separator-color=$DEFAULT \
    \
    --verif-color=$TEXT \
    --wrong-color=$TEXT \
    --time-color=$TEXT \
    --date-color=$TEXT \
    --layout-color=$TEXT \
    --keyhl-color=$KEY \
    --bshl-color=$WRONG \
    \
    --screen 1 \
    --radius 95 \
    --blur 2 \
    --indicator 1\
    --clock \
    --time-str="%H:%M" \
