# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="my-clean"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="%k:%M:%S"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

# Other settings

unsetopt hist_verify

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export LANG=en_US.UTF-8

export EDITOR='nvim'

# Rust
. "$HOME/.cargo/env"
export PATH="$PATH:$HOME/.cargo/bin"
# Lua
export PATH="$PATH:/opt/lua-language-server/bin"
# Node
export PATH="$PATH:/opt/node/bin"
# Go
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:/usr/local/go/bin"
# Protoc
export PATH="$PATH:/opt/protoc/bin"
# Python
export PATH="$PATH:/home/sj/.local/bin"
# Istioctl
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


# Might be able to put these somewhere in /etc
# https://helm.sh/docs/helm/helm_completion_bash/
source <(istioctl completion zsh)
source <(kind completion zsh)
source <(helm completion zsh)
source <(argocd completion zsh)
source <(gh completion -s zsh)
source <(kubectl completion zsh)
source <(kubectl-ate completion zsh)
source <(wrangler complete zsh)
alias k=kubectl
alias ka=kubectl-ate
compdef k="kubectl"
compdef ka="kubectl-ate"

alias kc=kubectx
alias kn=kubens

alias rg="rg --hidden --glob '!.git'"
alias gb="git branch"
alias gs="git status"
alias gc="git checkout"

export GOPATH=~/go

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

unsetopt hist_verify            # show command with history expansion to user before running it
unsetopt share_history          # share command history data
