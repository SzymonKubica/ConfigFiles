# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ssh_login='./.ssh_login'
alias update='./.update'

[[ -s /home/szymon/.autojump/etc/profile.d/autojump.sh ]] && source /home/szymon/.autojump/etc/profile.d/autojump.sh

path+=('/opt/google/chrome')
export PATH

# manjaro package finders
pf() { pacman -Slq --noconfirm | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S; }

pr() { sudo pacman -Rns $(pacman -Qe | fzf -m | awk '{print $1}'); }

yf() { yay -Slq --noconfirm | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro  yay -S; }

yr() { yay -Rns $(yay -Qe | fzf -m | awk '{print $1}'); }

neofetch --ascii_colors 36 --colors 36 15 15 36
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
