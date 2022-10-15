# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="custom"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(command-not-found git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# VARIABLES

export GITUSER=valfur03
export GITMAIL=valentin.furmanek@gmail.com
export EDITOR=$(command -v nvim)
export GEM_HOME="$HOME/gems"

## 42 related

export USER42=vfurmane
export MAIL42=vfurmane@student.42.fr

# ALIASES

local valfur03_git_base="git config user.name $GITUSER; git config user.email $GITMAIL"
local vfurmane_git_base="git config user.name $USER42; git config user.email $MAIL42"

local valfur03_gpg=$(gpg --list-secret-keys --with-colons --keyid-format=long | grep -B3 'Valentin Furmanek <valentin.furmanek@gmail.com>' | head -1 | awk -F: '{print $5}')
local vfurmane_gpg=$(gpg --list-secret-keys --with-colons --keyid-format=long | grep -B3 'Valentin Furmanek (vfurmane GPG key at 42) <vfurmane@student.42.fr>' | head -1 | awk -F: '{print $5}')

[ -n "$valfur03_gpg" ] && valfur03_git_base="$valfur03_git_base; git config user.signingkey $valfur03_gpg; git config commit.gpgsign true" || echo "valfur03 has no GPG key"
[ -n "$vfurmane_gpg" ] && vfurmane_git_base="$vfurmane_git_base; git config user.signingkey $vfurmane_gpg; git config commit.gpgsign true" || echo "vfurmane has no GPG key"
	
alias gituser="$valfur03_git_base"
alias gituser42="$vfurmane_git_base"

# FUNCTIONS

if [ -d $HOME/.local/bin ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d $HOME/gems/bin ]; then
    export PATH="$HOME/gems/bin:$PATH"
fi

if [ -d $HOME/.npm-global/bin ]; then
	export PATH="$HOME/.npm-global/bin:$PATH"
fi

if [ -x $HOME/.zshlrc ]; then
    source $HOME/.zshlrc
fi

if [ -f $HOME/.cargo/env ]; then
	. $HOME/.cargo/env
fi

source $ZSH/oh-my-zsh.sh
