
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

PATH="/usr/local/bin:${PATH}"
export PATH

statbox(){ 
pushd ~/Desktop/projects/analytics/;
ssh -i NickEspo.pem ubuntu@ec2-23-22-245-10.compute-1.amazonaws.com;
popd
 }

cdd(){ cd ~/Desktop/; }

cdg(){ cd ~/github/; }

cdp(){ cd ~/Desktop/projects/; }

cdr(){ cd ~/Desktop/projects/rails/; }

cdx(){ cd ~/Desktop/projects/XcodeProjects/; }

ga(){ git add -A ; }

gs(){ git status ; }

pull() { git pull ; }

push() { git push origin master ; }

function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}


# Creates an archive (*.tar.gz) from given directory.
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Create a ZIP archive of a file or folder.
function makezip() { zip -r "${1%%/}.zip" "$1" ; }

parse_git_branch() { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
}

#Application Aliases
alias lock="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias l="ls"

username="\u";
hostname="\h";
fullDirectory="\w";
currentDirectory="\W";
grey="\[\033[30m\]";
red="\[\033[31m\]";
green="\[\033[32m\]";
blue="\[\033[34m\]";
white="\[\033[37m\]";
purple="\[\033[35m\]";
begin="\[\033[G\]";
end="\[\033[0m\]";

PS1="$blue$currentDirectory$green\$(parse_git_branch)$end :";

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
