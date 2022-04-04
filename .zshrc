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

