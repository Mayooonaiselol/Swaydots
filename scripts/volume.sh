#!/bin/bash

DIR="$HOME/.config/dunst"

function get_volume {
  pamixer --get-volume
}

function is_mute {
  pamixer --get-mute
}

function send_notification {
  volume=`get_volume`
  bar=$(seq -s "━" 0 $(($volume / 5)) | sed 's/[0-9]//g')
  if [ '$is_mute' = "true" ]; then
    icon_name="$DIR/icons/volume-muted.svg"
    bar=""
    # dunstify " Volume " "$volume" -i $icon_name -r 5555 -u normal
    # notify-send.sh "$volume""      " -i "$icon_name" -t 2000 -h int:value:"$volume" --replace=555
  else
    if [  "$volume" -lt "10" ]; then
      icon_name="$DIR/icons/volume-low.svg"
      # dunstify " Volume " "$volume" -i $icon_name -r 5555 -u normal
      # notify-send.sh "$volume""     " -i "$icon_name" --replace=555 -t 2000
    else
      if [ "$volume" -lt "30" ]; then
        icon_name="$DIR/icons/volume-low.svg"
      else
        if [ "$volume" -lt "70" ]; then
          icon_name="$DIR/icons/volume-medium.svg"
        else
          icon_name="$DIR/icons/volume-high.svg"
        fi
      fi
    fi
  fi
  # Send the notification
  dunstify -a "VOLUME" "$bar" -i $icon_name -r 5555 -u normal
  # notify-send.sh "Volume : $volume" -i "$icon_name" -t 2000 --replace=555
}

case $1 in
  up)
    pamixer -i 5
    send_notification
    ;;
  down)
    pamixer -d 5
    send_notification
    ;;
  toggle)
    # Toggle mute
    pamixer -t
    if is_mute ; then
      icon_name="$DIR/icons/volume-muted.svg"
      dunstify -a "VOLUME" "Muted" -i $icon_name -r 5555 -u normal
    else
      send_notification
    fi
    ;;
esac
