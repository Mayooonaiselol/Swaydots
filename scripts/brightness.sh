#!/usr/bin/env bash

DIR="$HOME/.config/dunst"

function get_brightness {
  light -G | cut -d '.' -f 1
}

function send_notification {
  icon="$DIR/icons/brightness.svg"
  brightness=$(get_brightness)
  # Make the bar with the special character ─ (it's not dash -)
  # https://en.wikipedia.org/wiki/Box-drawing_character
  bar=$(seq -s "━" 0 $((brightness / 5)) | sed 's/[0-9]//g')
  # Send the notification
  dunstify -a "Brightness" "$bar" -i $icon -r 5555 -u normal

}

case $1 in
  up)
    light -A 10
    send_notification
    ;;
  down)
    light -U 10
    send_notification
    ;;
    esac
