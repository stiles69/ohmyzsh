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

# ----- JELLYFIN  -----
function jellyfin-start {
    sudo systemctl start jellyfin.service
}

function jellyfin-stop {
    sudo systemctl stop jellyfin.service
}

function jellyfin-status {
    sudo systemctl status jellyfin.service
}

function jellyfin-restart {
    sudo systemctl restart jellyfin.service
}

function jellyfin-enable {
    sudo systemctl enable jellyfin.service
}

function jellyfin-disable {
    sudo systemctl disable jellyfin.service
}

# ----- HTTPD  -----
function httpd-start {
    sudo systemctl start httpd.service
}

function httpd-stop {
    sudo systemctl stop httpd.service
}

function httpd-status {
    sudo systemctl status httpd.service
}

function httpd-restart {
    sudo systemctl restart httpd.service
}

function httpd-enable {
    sudo systemctl enable httpd.service
}

function httpd-disable {
    sudo systemctl disable httpd.service
}

