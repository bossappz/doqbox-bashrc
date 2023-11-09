# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
    *)
        ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi


### KEY SHORTCUTZ START ###
source ${HOME}/www/doqbox/toolz/shortcutz/doqbox_bashrc
### KEY SHORTCUTZ END ###
### NODE START ###
export NODE_ENV=testing
### NODE END ###
### USER DIR START ###
export BIZ9_HOME=${HOME}/www/doqbox/biz9
export BIZ9_PROJECTZ=${HOME}/www/projectz

export BIZ9_MOBILE_DEPLOY_IP=3.145.129.1
export BIZ9_BOX_IP_192=18.119.17.62
export BIZ9_BOX_IP_169=3.12.71.186
export BIZ9_BOX_IP_168=3.145.129.1
export BIZ9_BOX_SSH_168="/home/mama/www/projectz/168/service/other/aws/ec2_key/168.pem";
export BIZ9_BOX_IP_218=18.222.130.224
export BIZ9_BOX_SSH_218="/home/mama/www/projectz/218/server/other/aws/ec2_key/218.pem";
export BIZ9_BOX_IP_219=18.224.23.209
export BIZ9_BOX_SSH_219="/home/mama/www/projectz/219/server/other/aws/ec2_key/219.pem";
export BIZ9_BOX_IP_217=3.19.35.155
export BIZ9_BOX_SSH_217="/home/mama/www/projectz/217/server/other/aws/ec2_key/217.pem";


export BIZ9_MOBILE_DEPLOY_LOCATION='/home/admin/www/168/service/public/uploads'
export BIZ9_MOBILE_DOWNLOAD_URL="https://bossappz343.com/uploads"
export BIZ9_MOBILE_DEPLOY_LOC=/home/admin/www/168/service/public/uploads
export BIZ9_MOBILE_AWS_KEY_PEM=~/www/projectz/168/service/other/aws/ec2_key/168.pem

export BIZ9_MOBILE_APP_KEY_STORE_PASSWORD="12345678"
export BIZ9_MOBILE_APP_RELEASE_AAB="platforms/android/app/build/outputs/bundle/release/app-release.aab"
export BIZ9_MOBILE_APP_DEBUG_APK="platforms/android/app/build/outputs/apk/debug/app-debug.apk"
export BIZ9_MOBILE_APP_BUNDLE_RELEASE="platforms/android/app/build/outputs/bundle/release/app-release.aab"
export BIZ9_MOBILE_KEY_STORE="other/cordova/android/keystore/my-release-key.keystore"
export BIZ9_MOBILE_CONFIG_FILE="other/cordova/config/config.xml"
export BIZ9_MOBILE_ZIPALIGN_DIR=~/www/doqbox/toolz/android/cmdline-tools/bin/build-tools/33.0.2

alias 9_go_home='cd ${BIZ9_HOME}/www'
alias 9_go_downloadz='cd ${HOME}/Downloads';
alias 9_go_documents='cd ${HOME}/Documents';
alias 9_go_media='cd ${HOME}/media';
alias 9_go_core='cd ${BIZ9_HOME}/biz9-core/src/unstable';
alias 9_go_website='cd ${BIZ9_HOME}/biz9-website/src/unstable';
alias 9_go_cms='cd ${BIZ9_HOME}/biz9-cms/src/unstable';
alias 9_go_mobile='cd ${BIZ9_HOME}/biz9-mobile/src/unstable';
alias 9_go_service='cd ${BIZ9_HOME}/biz9-service/src/unstable';
alias 9_go_test='cd ${BIZ9_HOME}/biz9-test/src/unstable';
alias 9_go_docz='cd ${BIZ9_HOME}/biz9-docz/src/unstable';
alias 9_go_scriptz='cd ${BIZ9_HOME}/biz9-scriptz/src/unstable';
alias 9_go_push='cd ${BIZ9_HOME}/biz9-scriptz/src/push';
alias 9_go_vendor='cd ${BIZ9_HOME}/biz9-vendor/src/unstable';
alias 9_go_change_request='cd ${BIZ9_HOME}/biz9-change-request/src/unstable';
alias 9_go_vendor_payment='cd ${BIZ9_HOME}/biz9-vendor-payment/src/unstable';
alias 9_go_workshop='cd ${BIZ9_HOME}/biz9-workshop/src/unstable';
alias 9_go_opz='cd ${HOME}/www/opz';
alias 9_go_doqbox='cd ${HOME}/www/doqbox';
alias 9_go_biz='cd ${HOME}/www/doqbox/biz9';
alias 9_go_keyboard_shortcutz='vi ${HOME}/www/doqbox/toolz/shortcutz/doqbox_bashrc';
alias 9_go_bashrc='vi ${HOME}/.bashrc';
alias 9_go_mobile_config='vi www/scripts/biz9-mobile/scriptz/config.js';
### USER DIR END ###
### ANDROID SDK START ###
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
export PATH=${PATH}:"/usr/lib/jvm/java-11-openjdk-amd64/bin"
export ANDROID_HOME=~/www/doqbox/toolz/android/cmdline-tools/bin
export ANDROID_SDK_ROOT=~/www/doqbox/toolz/android/cmdline-tools/bin
export ANDROID_BUILD_TOOLS=~/www/doqbox/toolz/android/build-tools/android-13
export ANDROID_PLATFORM=~/www/doqbox/toolz/android/platform/android-13
export PATH=${PATH}:${ANDROID_SDK_ROOT}:${ANDROID_BUILD_TOOLS}:${ANDROID_BUILD_TOOLS}
export sdk_root=${ANDROID_HOME}
export GRADLE_HOME=/opt/gradle
export PATH=${PATH}:${GRADLE_HOME}/bin
export ORG_GRADLE_PROJECT_cdvMinSdkVersion=26
### ANDROID SDK END ###

