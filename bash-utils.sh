# bash-utils.sh
# ver 0.1
# 2014-09-25
# Francis San Juan <francis@ftsanjuan.com>
#
# The core shell script for loading bash-utils aliases
# and plugins

# ------------------------------------
# Load em up...
# ------------------------------------

# load aliases
for alias in $(pwd)/aliases/*.aliases.sh; do
  source $alias
done

# load plugins
for plugin in $(pwd)/plugins/**/*.plugin.sh; do
  source $plugin
done