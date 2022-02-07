# Swaydots
Dotfiles for my Sway desktop.

![image](https://user-images.githubusercontent.com/97210788/150338975-709e1c1a-6314-41d3-bb89-2274fa816466.png)

![image](https://user-images.githubusercontent.com/97210788/150339007-2bd9f7d1-ce32-476b-9db6-5352cfaf0cca.png)


## Fonts:

Overpass Nerd Font [req for some icons]

Iosevka[font for status bar]

mononoki Nerd Font Mono[font in terminal]

Ubuntu Nerd Font[req for showing icons]

## Theme:

arc-dark (gtk)

papirus-icon-theme

Breeze_cursors

NOTE: Remember to change the icon theme in dunst config files if you want to use a different icon theme. Update the gtk-3.0 config file as well if you change themes.

## About scripts (.sh files)

Make them executable first in order to use them! 

```chmod +x <script-name>.sh```

My Scripts are located in:

`waybar/scripts`

`scripts`

There is a battery.sh script which gives a notification when battery is low, you can add that script to execute at sway startup. 

Add this line in sway config(not present by default): `exec bash ./.scripts/battery.sh`
  
## Some things...
  
I use `swaylock-effects` instead of `swaylock`.

Change qutebrowser/config.py ,lines 155 and 159 for your location of the startpage.

ranger configs need the kitty terminal with ranger-devicons installed

## GTK Issue(with fix)

I encounter a gtk problem everytime in which the theme does not change from lxappearance.

I have a sample gtk-3.0 config file, in which you can put your gtk theme names and it should work.

Use the theme.sh script to apply changes right away without restarting sway.
