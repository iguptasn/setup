# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/igupta/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setting up terminal prompt here
PROMPT='%~ $:'

# some exa aliases (requires exa)
alias ls='exa -1lah'

# some rm aliases
alias rmall='sudo rm -r'

# some quality of life aliases to interact with windows file systems
alias desktop='cd /mnt/c/Users/igupt/OneDrive/Desktop'
alias documents='cd /mnt/c/Users/igupt/Documents'
alias downloads='cd /mnt/c/Users/igupt/Downloads'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/igupta/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/igupta/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/igupta/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/igupta/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>>  Setting up git status prompt >>>
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0 variable
zstyle ':vcs_info:git:*' formats '%b'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_
