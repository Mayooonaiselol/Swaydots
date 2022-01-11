# Swaydots
Dotfiles for my Sway desktop. 

![image](https://user-images.githubusercontent.com/97210788/148987103-fb7e761c-9030-4c9c-9797-af07c9f0a5e1.png)

![image](https://user-images.githubusercontent.com/97210788/148987373-b522e715-634f-4917-8a24-d3989b8a7c30.png)

## Fonts:

Overpass Nerd Font [req for some icons]

Iosevka[font for status bar]

mononoki Nerd Font Mono[font in terminal]

Ubuntu Nerd Font[req for showing icons]

## About scripts (.sh files)

Make them executable first in order to use them! 

```chmod +x <script-name>.sh```

My Scripts are located in:

`waybar/scripts`

`scripts`
  
## Some things...
  
I use `swaylock-effects` instead of `swaylock`.

Change qutebrowser/config.py ,lines 155 and 159 for your location of the startpage.

## GTK Issue(with fix)

I encounter a gtk problem everytime in which the theme does not change from lxappearance.

I have a sample gtk-3.0 config file, in which you can put your gtk theme names and it should work.

Use the theme.sh script to apply changes right away without restarting sway.
