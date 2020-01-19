# ----- TRANSMISSION  -----
function t-start {
    sudo systemctl start transmission-daemon.service
}

function t-stop {
    sudo systemctl stop transmission-daemon.service
}

function t-status {
    sudo systemctl status transmission-daemon.service
}

function t-restart {
    sudo systemctl restart transmission-daemon.service
}

function t-enable {
    sudo systemctl enable transmission-daemon.service
}

function t-disable {
    sudo systemctl disable transmission-daemon.service
}

# ----- PLEX -----
function plex-start {
    sudo systemctl start plexmediaserver.service
}

function plex-stop {
    sudo systemctl stop plexmediaserver.service
}

function plex-status {
    sudo systemctl status plexmediaserver.service
}

function plex-restart {
    sudo systemctl restart plexmediaserver.service
}

function plex-enable {
    sudo systemctl enable plexmediaserver.service
}

function plex-disable {
    sudo systemctl disable plexmediaserver.service
}
