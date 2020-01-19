source /home/brettsalemink/lib/sh/funcMakeTarXZ.sh

# More Handy Functions for compressing
function compact()
{
    if [ $# -lt 3 ] && [ -f $2 ] ; then
        case $1 in
            xz)          xz -zv -T 0 $2                     ;;
            tar.bz2)     tar cvjf $2.tar.bz2 $2;rm $2       ;;
            tar.gz)      tar cvzf $2.tar.gz $2;rm $2        ;;
            rar)         rar a $2.rar $2;rm $2              ;;
            gz)          gzip -v $2                         ;;
            tar)         tar cvf $2.tar $2; rm $2           ;;
            zip)         zip -v $2.zip $2;rm $2             ;;
            7z)          7z a $2.7z $2;rm $2                ;;
            *)           echo "$2 cannot be compressed via >compact<" ;;
        esac
    elif [ -d $2 ] ; then
        case $1 in
            xz)          MakeTarXZ $1;echo "Made $1"                       ;;
            tar.bz2)     tar cvjf $2.tar.bz2 $2;rm $2                       ;;
            tar.gz)      tar cvzf $2.tar.gz $2;rm $2                        ;;
            rar)         rar a $2.rar $2;rm $2                              ;;
            gz)          gzip -v $2                                         ;;
            tar)         tar cvf $2.tar $2; rm $2                           ;;
            zip)         zip -v $2.zip $2;rm $2                             ;;
            7z)          7z a $2.7z $2;rm $2                                ;;
            *)           echo "$2 cannot be compressed via >compact<"       ;;
        esac
    else
        echo "$2 cannot be compacted via >compact<"
    fi
}
