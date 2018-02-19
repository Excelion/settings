
export PATH=/snap/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH=/home/gleb/.oh-my-zsh





# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

HIST_IGNORE_ALL_DUPS="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

export UPDATE_ZSH_DAYS=2

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
    common-aliases fasd colorize colored-man extract command-not-found   
    gitfast gitignore zsh-git-prompt
    debian
    pip python virtualenv virtualenvwrapper
    atom sublime 
    cabal stack
    gradle
    valut
    zsh-navigation-tools
    zsh-autosuggestions
    zsh-syntax-highlighting 
    git fasd zsh-peco-history
)

fpath=(~/.zsh/completion $fpath)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP


export PATH=~/.local/bin:$PATH





# <<< ZPLUG BEGIN
source ~/.zplug/init.zsh

# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"

# Simple zsh calculator
zplug "arzzen/calc.plugin.zsh"

# Directory colors
zplug "seebi/dircolors-solarized", ignore:"*", as:plugin
# Enhanced cd
zplug "b4b4r07/enhancd", use:enhancd.sh

# Bookmarks and jump
#zplug "jocelynmallon/zshmarks"

# Enhanced dir list with git features
zplug "supercrabtree/k"

# Tips for aliases
#zplug "djui/alias-tips"

# Auto-close and delete matching delimiters
zplug "hlissner/zsh-autopair", defer:2

# Docker completion
zplug "felixr/docker-zsh-completion"



# Can manage local plugins
zplug "~/.zsh", from:local


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# <<<<<<<<</ ZPLUG END



# if [ -d "$HOME/.local/bin" ]; then
#   PATH="$HOME/.local/bin:$PATH"
# fi

# if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#   source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
# fi

export TERM=xterm-256color

POWERLEVEL9K_MODE="awesome-fontconfig"
# POWERLEVEL9K_MODE='nerdfont-complete'

# POWERLEVEL9K_MODE="awesome-patched"

# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

alias history='fc -t "%Y-%m-%d %T:" -il 0'
alias zshconfig='sudo gedit ~/.zshrc'

DEFAULT_USER=gleb


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir pyenv virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history time disk_usage)
POWERLEVEL9K_DISK_USAGE_ONLY_WARNING="true"
POWERLEVEL9K_PROMPT_ON_NEWLINE="true"
POWERLEVEL9K_RPROMPT_ON_NEWLINE="true"
POWERLEVEL9K_PROMPT_ADD_NEWLINE="true"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

source  ~/powerlevel9k/powerlevel9k.zsh-theme

ZSH_THEME="agnoster"



