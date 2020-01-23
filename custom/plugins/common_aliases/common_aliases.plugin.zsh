#======= COMMON ALIASES ADDED BY BRETT SALEMINK ======

alias bb="bleachbit --shred"
alias c='clear'
alias cd-b='cd ~/GitLab/bin'
alias code="/usr/share/code/code"
alias cs="cd"
alias dl="cd $HOME/Downloads;wait;ls"
alias docker='sudo podman'
alias extract='dtrx -r -v'
alias h='cd $HOME;clear'
alias ipe='curl ipinfo.io/ip'
alias ld='ls'
alias ohmyzsh="cd ~/.oh-my-zsh"
alias reboot='systemctl shutdown now -r'
alias sourcez='source $HOME/.zshrc'
alias untar='tar -zxvf '
alias wipe="wipe -rcf"
alias wget='wget -c '
alias zshrc="vim ~/.zshrc"

#==== TESTING ====
alias bin="cd /home/brettsalemink/GitLab/bin"
#==== FUNCTIONS ====
function tsh { ssh -X $1 -t "tmux -CC attach -t $2 || tmux -CC new -s $2"; } 

function aliases_show ()
{
    cat $ZSH_CUSTOM/plugins/common_aliases/common_aliases.plugin.zsh | grep alias
    wait
}

function extractor ()
{
    if [ -f $1 ] ; then
        case $1 in
            *.xz)          dtrx -r -v $1;rm -r $1   ;;
            *.tar.xz)      dtrx -r -v $1;rm -r $1   ;;
            *.tar.bz2)     dtrx -r -v $1;rm -r $1   ;;
            *.tar.gz)      dtrx -r -v $1;rm -r $1   ;;
            *.rar)         dtrx -r -v $1;rm -r $1   ;;
            *.gz)          dtrx -r -v $1;rm -r $1   ;;
            *.tar)         dtrx -r -v $1;rm -r $1   ;;
            *.zip)         dtrx -r -v $1;rm -r $1   ;;
            *.7z)          dtrx -r -v $1;rm -r $1   ;;
            *)           echo "$1 cannot be extracted via >extractor<" ;;
        esac
    elif [ -d $1 ] ; then
        case $1 in
            *.xz)          dtrx -r -v $1;rm -r $1   ;;
            *.tar.xz)      dtrx -r -v $1;rm -r $1   ;;
            *.tar.bz2)     dtrx -r -v $1;rm -r $1   ;;
            *.tar.gz)      dtrx -r -v $1;rm -r $1   ;;
            *.rar)         dtrx -r -v $1;rm -r $1   ;;
            *.gz)          dtrx -r -v $1;rm -r $1   ;;
            *.tar)         dtrx -r -v $1;rm -r $1   ;;
            *.zip)         dtrx -r -v $1;rm -r $1   ;;
            *.7z)          dtrx -r -v $1;rm -r $1   ;;
            *)           echo "$1 cannot be extracted via >extractor<"       ;;
        esac
    else
        echo "$1 cannot be extracted via >extractor<"
    fi
}

#== PODMAN ==
alias podman='sudo podman'

#=== SET DEFAULT EDITOR FOR VISUDO ====
alias visudo='EDITOR=nano visudo'

#============ ALLOW REMOTE EXECUTION =======
alias ssh-remote='ssh -t -o StrictHostKeyChecking=no '

#========= HUMAN READABLE OUPUT =========
#alias ls='ls -lash'

# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

#----	Dont have to add --progress to rsync
alias rsync='rsync --progress'
#====== Referenced from http:/LDP/abs/html/sample-bashrc.html
#----------- Get ls and ll aliases ----------
alias llh='cat $ZSH_CUSTOM/aliases-common.zsh'
alias lsh='cat $ZSH_CUSTOM/aliases-common.zsh'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
