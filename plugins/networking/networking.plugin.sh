# networking.plugin.sh
# ver 0.1
# 2014-09-25
# Francis San Juan <francis@ftsanjuan.com>
#
# Aliases and useful networking-related functions

# ------------------------------------
# CONFIG
# ------------------------------------
BU_NETWORKING_SSH_PORT="22"
BU_NETWORKING_SSH_USER="username"
BU_NETWORKING_SERVER="ip-or-address-of-server"

# ------------------------------------
# Networking Aliases
# ------------------------------------

# Establishes an ssh tunnel to a server
alias webtunnel="ssh -fCqN -p $BU_NETWORKING_SSH_PORT -D 8080 $BU_NETWORKING_SSH_USER@$BU_NETWORKING_SERVER"