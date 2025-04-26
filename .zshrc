autoload -Uz compinit
compinit

GOPATH=$HOME/go
GOBIN=$GOPATH/bin
PATH=$GOBIN:$HOME/bin:$HOME/.cargo/bin:$PATH

export PROMPT='%F{33} %~%f %F{46}» %f'                                                                                                                                       

EDITOR=micro
KUBE_EDITOR=$EDITOR

alias tree='tre'

# Terraform autocopmlete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/mikebz/bin/terraform terraform

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mikebz/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mikebz/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mikebz/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mikebz/google-cloud-sdk/completion.zsh.inc'; fi
