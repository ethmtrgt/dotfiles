#!/usr/bin/env bash

options="TR\nGB"

choice=$(echo -e "$options" | rofi -dmenu)

case $choice in
    "TR")
        setxkbmap -layout tr
        ;;
    "GB")
        setxkbmap -layout gb
        ;;
esac

