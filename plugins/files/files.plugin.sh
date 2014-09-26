# files.plugin.sh
# ver 0.1
# 2014-09-25
# Francis San Juan <francis@ftsanjuan.com>
#
# Aliases and functions to make performing
# various file operations easier

# ------------------------------------
# Aliases
# ------------------------------------

# an alias for cp to instead use rsync
# so copy progress can be displayed with a progress bar
alias cpv="rsync --progress -ah"
