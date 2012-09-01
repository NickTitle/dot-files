#Defined Functions

ff(){ find ./ -name $1; }

gg(){ grep -ir $1 ./ 2> /dev/null; }

cdd(){ cd /Users/marpaia/Desktop/; }

cdg (){ cd /Users/marpaia/github/; }

#Application Aliases
alias chrome="open /Applications/Google\ Chrome.app/"
alias twitter="open /Applications/Twitter.app/"
alias firefox="open /Applications/Firefox.app/"
alias mail="open /Applications/Mail.app/"
alias cal="open /Applications/iCal.app/"
alias lock="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

#Command Aliases
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lal="la -al"
alias l="ls"
alias cls="clear"

#System Definitions
export SVN_EDITOR=vim
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export PATH=/opt/local/bin:/opt/local/sbin:/Users/marpaia/bin:$PATH

#Define PS1
username="\u";
hostname="\h";
currentDirectory="\W";
grey="\[\033[1;30m\]";
red="\[\033[1;31m\]";
green="\[\033[1;32m\]";
blue="\[\033[1;34m\]";
white="\[\033[1;37m\]";
purple="\[\033[1;35m\]";
begin="\[\033[G\]";
end="\[\033[0m\]";

PS1="$begin$white[$green$username$white@$red$hostname$white] $blue$currentDirectory$red:$end";

#PS1 Colors
#Black       0;30     Dark Gray     1;30
#Blue        0;34     Light Blue    1;34
#Green       0;32     Light Green   1;32
#Cyan        0;36     Light Cyan    1;36
#Red         0;31     Light Red     1;31
#Purple      0;35     Light Purple  1;35
#Brown       0;33     Yellow        1;33
#Light Gray  0;37     White         1;37

#Special Charecters
#\a : an ASCII bell character (07)
#\d : the date in "Weekday Month Date" format (e.g., "Tue May 26")
#\D{format} :	the format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required
#\e : an ASCII escape character (033)
#\h : the hostname up to the first '.'
#\H : the hostname
#\j : the number of jobs currently managed by the shell
#\l : the basename of the shell’s terminal device name
#\n : newline
#\r : carriage return
#\s : the name of the shell, the basename of $0 (the portion following the final slash)
#\t : the current time in 24-hour HH:MM:SS format
#\T : the current time in 12-hour HH:MM:SS format
#\@ : the current time in 12-hour am/pm format
#\A : the current time in 24-hour HH:MM format
#\u : the username of the current user
#\v : the version of bash (e.g., 2.00)
#\V : the release of bash, version + patch level (e.g., 2.00.0)
#\w : the current working directory, with $HOME abbreviated with a tilde
#\W : the basename of the current working directory, with $HOME abbreviated with a tilde
#\! : the history number of this command
#\# : the command number of this command
#\$ : if the effective UID is 0, a #, otherwise a $
#\nnn : the character corresponding to the octal number nnn
#\\ : a backslash
#\[ : begin a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
#\] : end a sequence of non-printing characters

#Color Listings
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=''

