# Byobu
A useful terminal multiplexer abstraction.

## Linux install
sudo apt-get install tmux
sudo apt-get install byobu

## Setting things up
`byobu` starts up Byobu to do some initial configuration. The first time you start byobu, you will be asked to choose between screen and tmux. Choose tmux.

Now tmux should start up. You'll get a regular terminal session with an additional bar on the bottom. 
The left side of the bar shows the tmux windows you have open, the right side shows status notifications. 
You'll can change the status notifications enabled.

### Choose the escape sequence
Press Ctrl-a. This is the escape sequence for accessing all the functionality of tmux. 
The first time you press it, Byobu will ask you to choose between using Ctrl-a or F12 as the escape sequence. 

### Choose status notifications
Press F9 to access the Byobu menu. 
Go into "Toggle status notifications" and choose which stats to show on the bottom right of your screen.

## Default ssh options
(Use tmux as your default shell on ssh)
Press F9 and and toggle whether Byobu launches at login.

## Multiple sessions
Byobu can have multiple sessions (aka sets of windows) running at the same time, each with its own set of windows, 
and you can switch between them. 
Create a named session: `byobu new -s [session-name]`

You can attach/detach named sessions with byobu
If you only have a single session open, running byobu will attach to the existing session.
If you have multiple sessions open, running byobu will let you choose an existing session or create a new one.

## Useful commands
`byobu list-commands`

#### Session management
`byobu attach -t [session-name]`  Attach to a named session

`C-a d`            Detach session.

`C-a $`            Rename session, so you know which one this is when you attach to it.

`C-a s`            Choose session

#### Window management
`C-a %`            Split vertically

`C-a |`            Split horizontally

`Shift-arrow`      Move among splits

`C-a C`                Create new window

`C-a [0-9]`            Go to window [0-9]

`C-a n OR F4 OR Alt-right`           Next window

`C-a h OR F3 OR Alt-left`          Previous window

`C-a , OR F8`      Rename window. This changes the name in the status bar.

`C-a A`                Return to last window

`C-a "`                Choose window, has a nice menu, supports VIM-style navigation

### Community
https://help.ubuntu.com/community/Byobu


