alias 'ls=ls -hF'
alias 'l=ls -l'
alias 'll=ls -lrtAhF'
alias 'la=ls -lA'
alias 'dk=docker'

# updates PATH for the Google Cloud SDK.
source '/Users/yufengg/code/google-cloud-sdk/path.bash.inc'

# enables shell command completion for gcloud.
source '/Users/yufengg/code/google-cloud-sdk/completion.bash.inc'

# add local pip to the PATH
export PATH=$PATH:/Users/yufengg/Library/Python/2.7/lib/python/site-packages

# pip requires an active virtualenv to run
export PIP_REQUIRE_VIRTUALENV=true

# function for updating global pip 
# to upgrade global packages, use this, for example:
# gpip install --upgrade pip setuptools wheel virtualenv
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# orange prompt with blue file path
PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;166m\]\u@\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '

export BYOBU_PREFIX=/usr/local
