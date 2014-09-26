# admin-tools.plugin.sh
# ver 0.1
# 2014-09-19
# Francis San Juan <francis@ftsanjuan.com>
#
# Aliases and utilities for administrator related operations

# ------------------------------------
# Processes
# ------------------------------------

# Searches for a process with the supplied name
function findprocess() {
  ps aux | grep $1
}

# ------------------------------------
# Logging
# ------------------------------------

# Tail a particular file
alias tailf="tail -f"

# ------------------------------------
# Encryption
# ------------------------------------

# quickly generates a hash by using
# an sha256 hash of the current date
alias quickhash="echo -n date | shasum -a 256"
