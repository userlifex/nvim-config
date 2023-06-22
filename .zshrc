# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR=~/.nvm
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin/python3.10:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"

source $(brew --prefix nvm)/nvm.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
#
#alias update:credentials="cp ~/Downloads/credentials ~/.aws/"
alias rm:cp:credentials="rm ~/.aws/credentials && rm ~/.aws/config && cp ~/Downloads/credentials ~/.aws/"
alias cp:credentials="cp ~/Downloads/credentials ~/.aws/"
alias cp:aws="cp ~/Downloads/credentials ~/.aws/"
alias rm:aws:credentials="rm ~/.aws/*"
alias cp:aws:credentials="cp ~/Downloads/credentials ~/.aws/"
alias src="source ~/.zshrc"
alias rm:swap='rm ~/.local/share/nvim/swap/*'
alias cd:desk="cd ~/code/autodesk"
alias cd:code="cd ~/code"
alias code="cd ~/code"
alias autodesk="cd ~/code/autodesk"
alias desk:ui:groups="cd ~/code/autodesk/aum-groups-ui"
alias desk="cd ~/code/autodesk"
alias desk:app:uma="cd ~/code/autodesk/app-uma"
alias desk:ul="cd ~/code/autodesk/aum-user-list-service"
alias desk:ul:migra="cd ~/code/autodesk/aum-user-list-migration-lambda"
alias desk:userlist="cd ~/code/autodesk/aum-user-list-service"
alias desk:syn="cd ~/code/autodesk/aum-synthetic-monitoring"
alias desk:umatest="cd ~/code/autodesk/aum-performance-tests"
alias desk:aumtest="cd ~/code/autodesk/aum-performance-tests"
alias desk:context="cd ~/code/autodesk/aum-subscriber-context-lambda"
alias desk:infra="cd ~/code/autodesk/aum-deploy-infrastructure"
alias desk:teams="cd ~/code/autodesk/uma-teams-service"
alias desk:ulspec="cd ~/code/autodesk/aum-user-list-open-api-spec"
alias desk:comp:alarms="cd ~/code/autodesk/uma-composite-alarms"
alias desk:shared:util="cd ~/code/autodesk/uma-shared-utilities"
alias desk:user:access="cd ~/code/autodesk/app-user-access"
alias desk:chassis="cd ~/code/autodesk/app-chassis"
alias desk:bill="cd ~/code/autodesk/bill"
alias desk:billing="cd ~/code/autodesk/bill/app-billing"
alias desk:subscriptions="cd ~/code/autodesk/bill/subscriptions-contracts"
alias desk:modals="cd ~/code/autodesk/uma-modals"
alias vi="nvim"
alias v="nvim ."
alias vi:zsh="nvim ~/.zshrc"
alias vi:vi="nvim ~/.vimrc"
alias vi:tmux="nvim ~/.tmux.conf"
alias tm="tmux"
alias tmx="tmux"
alias t="tmux"
alias tls="tmux ls"
alias code="cd ~/code"
alias server:5001="http-server -p 5001"
alias link:users="yarn link @aum/aum-users-ui"
alias link:un="yarn unlink && yarn link"
alias jmeter="~/code/apache-jmeter-5.5/bin/jmeter"
alias test:tenantUsersv2="yarn test test/controllers/tenants/users/functional/default-assignment/get_users_from_tenant_v2_default_assignments.spec.js"
alias test:tenantUsersv3="yarn test test/controllers/tenants/users/functional/default-assignment/get_users_from_tenant_v3_default_assignments.spec.js"
alias yt="yarn test"
alias delete="rm -rf"
alias delete:modules="rm -rf node_modules"
# alias vi="nvim"
#alas

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
export BLAZEMETER_TOKEN=5ca531b6c148576f009886a3:e603c97f42faef573d8bf9cc8c446097af5e79d7b19e4bab2d59ae7372321624dbe0f57f
export UL_DEV_CLIENT_ID=32b6qhj0oilnu0t6ueen1e900v
export UL_DEV_CLIENT_SECRET=1tsed3u3bh9jbfbpmgdtht7da2kqj9d9s55mideib9sotdusn39t
export UL_STG_CLIENT_ID=32b6qhj0oilnu0t6ueen1e900v
export UL_STG_CLIENT_SECRET=1tsed3u3bh9jbfbpmgdtht7da2kqj9d9s55mideib9sotdusn39t

#TODO: search what is this cred
#userlist/dev/userlistdb/master
#export DB_USER='tZPFKPFRPDkQVqdA'
#export DB_PASSWORD='VN3p&g]P<y+U]eP5eM>q`1=<Zvo;pxtQ'
#export DB_HOST='userlist.cluster-co8lmqw7nvta.us-west-2.rds.amazonaws.com'

#userlist/dev/userlistdb/appuser
export DB_USER='appuser_clone'
export DB_PASSWORD='WIZ$6>=]rF%ZrGj;j3eT23I{BhA%<9&B'
export DB_HOST='userlist.cluster-co8lmqw7nvta.us-west-2.rds.amazonaws.com'

#userlist/stg/userlistdb/appuser
#export DB_USER='appuser'
#export DB_PASSWORD='tZfcc9.|s92l*R3j_2-A$OGAcc!wVsep'
#export DB_HOST='userlist.cluster-c8htiygevha6.us-west-2.rds.amazonaws.com'


#userlist/stg/userlistperfdb/master
#export DB_USER='LmbZDaUJUQeIOSmX'
#export DB_PASSWORD='1uvf4Gq0L?4!RxI]L*8#kJ[)`K%L.Qn='
#export DB_HOST='userlist-perf.cluster-c8htiygevha6.us-west-2.rds.amazonaws.com'

#export STAGE='stg-perf'
#export STAGE='dev'
export CATCHPOINT_USR=RDW-D.B-jW1.BEnYiZc
export CATCHPOINT_PSW=b314566b-f230-44cd-ba92-f5494de5c1b9

export ENABLE_GUEST_DEFAULT_ASSIGN=true # this is for test new default assignments in user-list-service
#export DEBUG=sequelize:sql*

#functions

mcdir ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}
