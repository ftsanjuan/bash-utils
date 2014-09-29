# bash-utils.sh
# ver 0.1
# 2014-09-25
# Francis San Juan <francis@ftsanjuan.com>
#
# The core shell script for loading bash-utils aliases
# and plugins

# ------------------------------------
# Config
# ------------------------------------

# Set the path to your bash-utils installation
export BU_ROOT="$HOME/bash-utils"


# ------------------------------------
# Load em up...
# ------------------------------------

# load aliases
for alias in $BU_ROOT/aliases/*.aliases.sh; do
  source $alias
done

# load plugins
for plugin in $BU_ROOT/plugins/**/*.plugin.sh; do
  source $plugin
done