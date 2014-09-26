# redis.plugin.sh
# ver 0.1
# 2014-09-19
# Francis San Juan <francis@ftsanjuan.com>
#
# A list of handy redis aliases
#
# @dependencies
#   redis

# Update with path/to/redis/config
BU_REDIS_CONF="/usr/local/etc/redis.conf"

alias credis="redis-cli"
alias stopredis="redis-cli shutdown"
alias startredis="redis-server $BU_REDIS_CONF"
