#export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up'
export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
