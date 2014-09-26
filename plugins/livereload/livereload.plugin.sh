# livereload.plugin.sh
# ver 0.1
# 2014-09-25
# Francis San Juan <francis@ftsanjuan.com>
#
# Aliases for livereload
#
# @dependencies
#   rubygems
#   guard
#   guard-livereload

# ------------------------------------
# Livereload Aliases
# ------------------------------------

# starts up guard-livereload in the current folder
#
# @notes:
#   ensure that there is a Guardfile in the current folder
#
alias livereload="guard -P livereload"