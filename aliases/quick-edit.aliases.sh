# quickedit.aliases.sh
# ver 0.1
# 2014-09-29
# Francis San Juan <francis@ftsanjuan.com>
#
# Aliases for quickly editing some important files
#
# @dependencies
#   vim or a text editor like Sublime Text
#   (edit the app required as needed)

# ------------------------------------
# CONFIG
# ------------------------------------

# Set your editor here
BU_QUICKEDIT_APP="subl"

# ------------------------------------
# Bash Profile
# ------------------------------------

alias bashpro="$BU_QUICKEDIT_APP ~/.bash_profile"

# Reloads .bash_profile
alias bashrl=". ~/.bash_profile"

# ------------------------------------
# bash-utils
# ------------------------------------

# Edit your bash-utils files
alias bashutils="$BU_QUICKEDIT_APP $BU_ROOT"

# Reloads bash-utils
alias rbu=". $BU_ROOT/bash-utils.sh"