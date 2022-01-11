# Swaydots
Dotfiles for my Sway desktop

## Fonts:

Overpass Nerd Font [req for some icons]

Iosevka[font for status bar]

mononoki Nerd Font Mono[font in terminal]

Ubuntu Nerd Font[req for showing icons]

## About .sh files

Make them executable first in order to use them! 

```chmod +x <script-name>.sh```

My Scripts are located in:

`waybar/scripts`

`scripts`
  
## Some things...
  
I use `swaylock-effects` instead of `swaylock`

# Some Common Issues (and fixes) you might encounter after installing sway...

## GTK Issue

I encounter a gtk problem everytime in which the theme does not change from lxappearance.

I have a sample gtk-3.0 config file, in which you can put your gtk theme names and it should work.

Use the theme.sh script to apply changes right away without restarting sway.
