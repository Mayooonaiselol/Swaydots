# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mayo/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# End of lines added by compinstall
source /home/mayo/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Locale set
export LC_ALL=en_US.UTF-8

# Prompt
autoload -Uz promptinit; promptinit
source /home/mayo/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#PROMPT='
#%F{cyan}%f %F{cyan}%1~%f %F{red}❯%f%F{magenta}❯%f%F{blue}❯%f '

# Aliases

alias -g ls="lsd"
alias top="gotop -c default-dark"
alias -g v="nvim"
alias -g ping="ping -c 3"
alias update="doas xbps-install -Suv"
alias nf="neofetch"
alias trash="mv --force -t ~/.local/share/Trash"
alias c="clear"
alias emptybin="rm -rf ~/.local/share/Trash/*"
alias gh="history | grep"
alias sudo="doas"
alias sql='mycli --prompt "$MYCLI_PS1"'
alias x="exit"
alias cmatrix="unimatrix -n -s 96 -l 'o' -c cyan"
alias share="/usr/libexec/xdg-desktop-portal -r & /usr/libexec/xdg-desktop-portal-wlr"

export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland
export MYCLI_PS1="$(echo -e '\x1B[36m \\u@\\h\x1B[0m \x1B[32m[\d]\x1B[0m \x1B[35m❯\x1B[0m ')"
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export PATH="$HOME/.local/bin:$PATH"

if [ -d "$HOME/.cargo/bin" ] ; then
  PATH="$HOME/.cargo/bin:$PATH"
fi
# https://github.com/jackharrisonsherlock/common

# Prompt symbol
COMMON_PROMPT_SYMBOL="ﬦ"

# Colors
COMMON_COLORS_HOST_ME=green
COMMON_COLORS_HOST_AWS_VAULT=yellow
COMMON_COLORS_CURRENT_DIR=blue
COMMON_COLORS_RETURN_STATUS_TRUE=magenta
COMMON_COLORS_RETURN_STATUS_FALSE=yellow
COMMON_COLORS_BG_JOBS=yellow
COMMON_COLORS_ICON_STATUS=red
COMMON_COLORS_HOME_STATUS=cyan
# Left Prompt
PROMPT='
%F{blue}$(zsh_prompt_home_indicator)%f$(common_host)%F{blue}$(common_current_dir)%f%F{red}$(zsh_prompt_pwd_indicator)%f$(common_bg_jobs)$(common_return_status)'

# Enable redrawing of prompt variables
 setopt promptsubst

# Prompt with current SHA
# PROMPT='$(common_host)$(common_current_dir)$(common_bg_jobs)$(common_return_status)'
# RPROMPT='$(common_git_status) $(git_prompt_short_sha)'

# Host
common_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[$COMMON_COLORS_HOST_ME]%}$me%{$reset_color%}:"
  fi
  if [[ $AWS_VAULT ]]; then
    echo "%{$fg[$COMMON_COLORS_HOST_AWS_VAULT]%}$AWS_VAULT%{$reset_color%} "
  fi
}

zsh_prompt_pwd_indicator() {
   echo -n "%{$fg[$COMMON_COLORS_ICON_STATUS]%}"
    if [[ "$PWD" = "$HOME" ]];then
        echo ""
    else
        echo " "
    fi
}

zsh_prompt_home_indicator() {
   echo -n "%{$fg[$COMMON_COLORS_HOME_STATUS]%}"
    if [[ "$PWD" = "$HOME" ]];then
        echo ""
    else
        echo ""
    fi
}

# Current directory
common_current_dir() {
  echo -n "%{$fg[$COMMON_COLORS_CURRENT_DIR]%}%c "
}

# Prompt symbol
common_return_status() {
  echo -n "%(?.%F{$COMMON_COLORS_RETURN_STATUS_TRUE}.%F{$COMMON_COLORS_RETURN_STATUS_FALSE})$COMMON_PROMPT_SYMBOL%f "
}

# Background Jobs
common_bg_jobs() {
  bg_status="%{$fg[$COMMON_COLORS_BG_JOBS]%}%(1j.↓%j .)"
  echo -n $bg_status
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mayo/.anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mayo/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mayo/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mayo/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

