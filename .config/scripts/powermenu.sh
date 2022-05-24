#!/usr/bin/env bash


shutdown=""
reboot=""
lock=""
suspend=""
logout=""

options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

choice=$(echo -e "$options" | rofi -dmenu -config ~/.config/rofi/powermenu.rasi)

case $choice in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        echo "lock" # will be replaced
        ;;
    $suspend)
        systemctl suspend
        ;;
    $logout)
        bspc quit
        ;;
esac

$command