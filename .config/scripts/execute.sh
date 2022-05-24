#!/usr/bin/env bash

command=$(rofi -dmenu -p "Execute command: " -config ~/.config/rofi/execute.rasi)

$command