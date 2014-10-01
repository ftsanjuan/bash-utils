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
#
# @param  ending
#   the ending searched for
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

# quick symlink
alias lns="ln -s"

# Symlinks the current folder to the path specified
#
# @param path
#   /path/to/symlink
function linkthis() {
  ln -s $(pwd) $1
}

# symlinks a file/folder in the current path to
# to the path specified
#
# @param  source
#   the file/folder being symlinked
# @param  target path
#   the path to the symlink
function linkf() {
  ln -s $(pwd)/$1 $2
}