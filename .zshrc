# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/h/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PS1='%F{#2E9EF4}%n@%m:%~%$%f '

# Set up arrow keys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# --- ALIASES ---

alias copy=wl-copy

alias .s='source ~/.zshrc'
alias .r='vim ~/.zshrc'
# alias .a='vim ~/ ALIASES_FILE'

alias vsway='vim ~/.config/sway/config'
alias vswaylock='vim ~/.config/swaylock/config'
alias vfoot='vim ~/.config/foot/foot.ini'
alias vstatus='vim ~/.config/i3status-rust/config.toml'

# ls
alias l='ls --color -CF'
alias l.='ls --color -d .* --color=auto'
alias ls='ls --color'
alias ll='ls --color -la'
alias la='ls --color -A'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Modern replacements
alias cat="bat -pp" # --plain --paging=never
alias cd="z"

# Exports
export PATH="$HOME/.local/bin:$PATH"
export PICO_SDK_PATH=$HOME/pico/pico-sdk

# Source scripts
eval "$(ssh-agent -s)" &> /dev/null

[ -s "/home/h/.scm_breeze/scm_breeze.sh" ] && source "/home/h/.scm_breeze/scm_breeze.sh"

eval "$(zoxide init zsh)"
