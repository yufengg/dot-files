# dot-files
place for useful dot files and other configs

## Homebrew, virtualenv, and python/pip configs 
These are based the following two posts, which worked as of Jan 2016:

https://hackercodex.com/guide/mac-osx-mavericks-10.9-configuration/

https://hackercodex.com/guide/python-development-environment-on-mac-osx/

## Layering in pyenv for Python 3 environment management
This was especially useful for doing Anaconda and pip together, as pyenv was able to manage the whole thing from the top. In particular, having the environments triggered automatically based on what directory I was in, was great. 

Copied from http://fgimian.github.io/blog/2014/04/20/better-python-version-and-environment-management-with-pyenv/

Install and set up using the following commands: 

    sudo apt-get install curl git-core gcc make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libssl-dev
    curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

    echo '#pyenv config
    export PATH="${HOME}/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)" 
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1' >> ~/.bash_profile

    source ~/.bash_profile
    
Once installed, list python versions via `pyenv install -l`

To install a particular version (make it available for envs), `pyenv install <version>`, e.g. `pyenv install 3.5.3`

Virtualenvs: Create, list, show current, activate, deactive, and delete

    pyenv virtualenv <env name>
    pyenv versions
    pyenv version
    pyenv activate <env name>
    pyenv deactivate
    pyenv uninstall <env or version>
   
Set the local (directory) pyenv: `pyenv local <version or env name>`

Set the global python version/env: `pyenv global <version or env name>`

https://github.com/yyuu/pyenv

https://github.com/yyuu/pyenv-virtualenv


## (no longer valid until Karabiner updates) Karabiner private.xml
Load this file in for the private.xml for Karabiner for some useful custom bindings.

keycodes: https://github.com/tekezo/Karabiner/blob/master/src/bridge/generator/keycode/data/KeyCode.data

modifier keys: https://github.com/tekezo/Karabiner/blob/version_10.1.0/src/bridge/generator/keycode/data/ModifierFlag.data

## Ei-kana
I've been using https://ei-kana.appspot.com/ to map global shortcuts. It doesn't know the difference between left and right cmd, so I use ctrl + vim-bindings on the right, and ctrl+WASD on the left.

## Logitech mouse configs
Has settings for sensitivity and remapping left and right scroll to nav screens on OSX, and to map the middle thumb to mission control, and swaps back and forward thumb buttons
