export GREP_OPTIONS='--color=auto'                                                                # Color for grep
export LSCOLORS=Exfxcxdxbxegedabagacad                                                            # Set the colors for LS command

# Paths
export PATH=$HOME/Library/Python/3.7/bin:$PATH                                                    # Set the correct python path
export PATH=${HOME}/Development/go-workspace/bin:$PATH                                            # Golang path
export PATH=$HOME/Development/bin:$PATH                                                           # Enable execution of binaries in dev binary
export PATH=/usr/local/bin:$PATH
export PATH=${HOME}/.composer/vendor/bin/:$PATH                                                   # Composer path

# Borg backups
export BORG_RSH='ssh -i ~/Keys/storage_server/storage_rsa'
export BORG_REPO='19728@ch-s012.rsync.net:borg-repo'

alias copypk='cat ~/.ssh/id_rsa.pub | pbcopy'   # Automatically copy private key
alias ls='ls -l -a -G'                          # Preferred LS implementation
alias cd..='cd ..'                              # Remove the annoyance of having command not found
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias hosts='sudo nvim /etc/hosts'
alias bashrc='nvim ~/.bashrc'
alias reload='source ~/.zshrc';

alias vim='nvim';                # Preferred vim setup
alias emacs='emacs -nw';         # Preferred emacs setup

alias hosts='vim ~/Hosts/default'

cd() {
    builtin cd "$@";
    ls -FGlAhp;
}

serveo() {
    ssh -R 80:localhost:"$1" serveo.net
}

# Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python 3.8
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

complete -C /usr/local/bin/terraform terraform
