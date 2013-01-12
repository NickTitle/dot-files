#Defined Functions

ff(){ find ./ -name *$1*; }

gg(){ eval 'grep -irnI --color "'"$@"'" ./ 2> /dev/null'; }

cdd(){ cd /Users/marpaia/Desktop/; }

cdg(){ cd /Users/marpaia/github/; }

parse_git_branch() { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
}

#Application Aliases
alias chrome="open /Applications/Google\ Chrome.app/"
alias twitter="open /Applications/Tweetbot.app/"
alias firefox="open /Applications/Firefox.app/"
alias mail="open /Applications/Mail.app/"
alias cal="open /Applications/iCal.app/"
alias ical="open /Applications/iCal.app/"
alias lock="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias burp="nohup java -jar -Xmx1g /Users/marpaia/Tools/burp.jar > /dev/null&"
alias w="weechat-curses"
alias weechat="weechat-curses"


#Command Aliases
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lal="la -al"
alias l="ls"
alias cls="clear"
alias pythong="python"
alias p="python -c"
alias mak="make"
alias s="ssh vm"
alias vm="ssh vm"
alias sec="ssh sec"
alias sec03="ssh sec03"
alias urlencode='python -c "import urllib, sys ; print urllib.quote_plus(sys.stdin.read())";'
alias ios="open /Users/marpaia/Documents/Mobile/iOS/Etsy.xcodeproj"
alias bashrc="vim ~/.bash_profile"
alias showall="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hideall="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"

#Color Listings
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=''
export GREP_OPTIONS='--color=auto'

#System Definitions
export SVN_EDITOR=vim
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export PATH=/opt/local/bin:/opt/local/sbin:/Users/marpaia/bin:$PATH
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

#Define PS1
username="\u";
hostname="\h";
currentDirectory="\W";
grey="\[\033[30m\]";
red="\[\033[31m\]";
green="\[\033[32m\]";
blue="\[\033[34m\]";
white="\[\033[37m\]";
purple="\[\033[35m\]";
begin="\[\033[G\]";
end="\[\033[0m\]";

#PS1="$begin$white[$green$username$white@$red$hostname$white] $blue$currentDirectory$green\$(parse_git_branch)$red:$end";
PS1="$blue$currentDirectory$green\$(parse_git_branch)$red:$end";

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
