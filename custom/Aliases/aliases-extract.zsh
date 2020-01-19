source $HOME/lib/sh/funcExtractXZ-Tar.sh
# ====== Handy Functions ======
function extract()
{
    if [ -f $1 ] ; then
        case $1 in
            *.xz)        xz -dv -T 0 $1                                     ;;
            *.tar.xz)    ExtractXZ-Tar $1;echo "Ran ExtractXZ-Tar"          ;;
            *.tar.bz2)   tar xvjf $1                                        ;;
            *.tar.gz)    tar xvzf $1                                        ;;
            *.bz2)       bunzip2 $1                                         ;;
            *.rar)       unrar x $1                                         ;;
            *.gz)        gunzip $1                                          ;;
            *.tar)       tar xvf $1                                         ;;
            *.tbz2)      tar xvjf $1                                        ;;
            *.tgz)       tar xvzf $1                                        ;;
            *.zip)       unzip $1                                           ;;
            *.Z)         uncompress $1                                      ;;
            *.7z)        7z x $1                                            ;;
            *)           echo "$1 cannot be extracted via >extract<"          ;;
        esac
    else
        echo "$1 cannot be extracted via >extract<"
    fi
}
