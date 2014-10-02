# git.plugin.sh
# ver 0.1
# 2014-10-01
# Francis San Juan <francis@ftsanjuan.com>
#
# Aliases and functions for git

# ------------------------------------
# Git Aliases
# ------------------------------------

# adds a .gitkeep file to the current folder
alias gkeep="touch $(pwd)/.gitkeep"

# ------------------------------------
# Git Functions and Utilities
# ------------------------------------

# add a file/folder to .gitignore file in the current folder
function gignore() {
  printf "\n$1" >> .gitignore
}