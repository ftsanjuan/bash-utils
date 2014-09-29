# navigation.plugin.sh
# ver 0.1
# 2013-01-01
# Francis San Juan <francis@ftsanjuan.com>
#
# Aliases and useful functions for getting around the os

# ------------------------------------
# Directory navigation
# ------------------------------------

alias home="cd ~"
alias root="cd /"
alias ..="cd .."
alias bk="cd -"

# ------------------------------------
# Search utilities
# ------------------------------------

# Searches for files from the current folder (recursive) based
# on a supplied ending
function fendswith() {
  find . -type f -name \*$1
}

# ------------------------------------
# File/Directory listing
# ------------------------------------

# List directory contents with details
alias lsla="ls -la"

# ------------------------------------
# File/Folder utilities
# ------------------------------------

# Symlinks the current folder to the path specified
#
# @param path
#   /path/to/symlink
function linkthis() {
  ln -s $(pwd) $1
}

# quick symlink
alias lns="ln -s"
