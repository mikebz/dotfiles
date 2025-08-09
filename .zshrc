autoload -Uz compinit
compinit

GOPATH=$HOME/go
GOBIN=$GOPATH/bin
PATH=$GOBIN:$HOME/bin:$HOME/.cargo/bin:$HOME/.krew/bin:~/npm/bin:$PATH

export PROMPT='%F{33} %~%f %F{46}» %f'                                                                                                                                       

EDITOR=micro
KUBE_EDITOR=micro

# Rust and Rust based tools
. "$HOME/.local/bin/env"
. "$HOME/.cargo/env" 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mikebz/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mikebz/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mikebz/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mikebz/google-cloud-sdk/completion.zsh.inc'; fi

# handy aliases
alias ..='cd ..'
alias ...='cd ../..'
alias typora="open -a typora"
