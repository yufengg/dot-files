# Initial machine setup

Jan 15, 2016

This is based on https://hackercodex.com/guide/mac-osx-mavericks-10.9-configuration/ , updated for El Captain.

## Unhide the Library folder
1. Go to your home directory in Finder (or press Shift-Command-H)
2. Make sure your in list view (or press Command-2)
3. Right-click and select "Show View Options" (or press command+J)
4. Check off "Show Library Folder". 

## Bash profile setup
Put the `bashrc` and `bash_profile` files into your home directory, rename them with dots in front of them.

Run `source ~./bash_profile`

## XCode compiler
Run `xcode-select --install`

## Homebrew
(Homebrew)[http://brew.sh/] is useful. Get it.
  `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

  `brew doctor`

  `brew update`

## Python
`brew install python`

If you want python 3.x
`brew install python3 `

## Pip
Not gonna use a global pip. When installing via Homebrew Python’s pip, packages will be installed to /usr/local/lib/python2.7/site-packages, with binaries placed in /usr/local/bin.

## Virtualenv
`pip install virtualenv`

`mkdir -p ~/code/projects ~/code/virtualenvs`

`virtualenv foobar`

`virtualenv -p python3 foobar-py3`

## Global pip upgrades/updates
`gpip install --upgrade pip setuptools wheel virtualenv`

## Example workflow

`cd ~/code/virtualenvs`
`virtualenv bigquery`
`cd bigquery`
`source bin/activate`
`pip install --upgrade google-api-python-client`

`cd ~/code/projects`
`mkdir bigquery-starter`
`cd bigquery-starter`
`vim start.py`
 
