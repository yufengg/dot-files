# `pyenv`
## Install pyenv, get a python environment

References:

* https://github.com/pyenv/pyenv-installer
* https://github.com/pyenv/pyenv

Run this first

    curl https://pyenv.run | bash

    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

    exec $SHELL
    
Set up pyenv, install python 3.X.Y

    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"

    pyenv install 3.7.7
    
See [common build problems](https://github.com/pyenv/pyenv/wiki/Common-build-problems) in the event of errors
* Ubuntu/Debian:
```sh
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
```
# `pyenv-virtualenv`
## install pyenv-virtualenv

Install

    git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
    
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
    
    exec "$SHELL"

## Create and activeate a venv
[Commands reference](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md)

Go to your project folder, and set version and env name

    pyenv virtualenv 3.7.7 env
    pyenv activate env
    
See the version you're on

    pyenv version

## Deactivate, set/unset defaults
    
Deactivate

    pyenv deactivate
    
Set local project environment default choice

    pyenv local env
    
Clear local default env

    pyenv local --unset
