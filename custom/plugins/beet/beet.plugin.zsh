user_commands=(
  import list remove modify move update 
  write stats fields config
  fingerprint absubmit acousticbrainz
  embedart fetchart lastgenre replaygain
  splupdate convert duplicates missing web)

for c in $user_commands; do; alias beet-$c="beet $c"; done

function beet-singles () {
    export BEETSDIR=$BIN/beets/config/beets-singles
}

function beet-default () {
    export BEETSDIR=$BIN/beets/config/beets
}

function beet-config () {
    vim $BEETSDIR/config.yaml
}

function beet-spl-remove () {
    cd $MUSIC/Playlists
    find . -maxdepth 1 -type f -name "*.m3u" -delete
    cd -
}
