# file-compression.plugin.sh
# ver 0.1
# 2014-09-19
# Francis San Juan <francis@ftsanjuan.com>
#
# Various compression and extraction tools
#
# @dependencies
#   rails
#   rake

# ------------------------------------
# Compression
# ------------------------------------

# Create a Gzip tarball from a folder
tarball() {
  if [ -f $1 ]; then
    echo "Compressing `$1` to tar.gz ...";
    tar -zcvf "$1.tar.gz" $1;
    echo "Compression complete.";
  else
    echo "Please type a valid filename";
  fi
}

# ------------------------------------
# Extraction
# ------------------------------------

# "One extract function to rule them all"
# (i.e. extract any compressed file)
extract ()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1;;
            *.tar.gz)    tar xvzf $1;;
            *.bz2)       bunzip2 $1;;
            *.rar)       unrar x $1;;
            *.gz)        gunzip $1;;
            *.tar)       tar xvf $1;;
            *.tbz2)      tar xvjf $1;;
            *.tgz)       tar xvzf $1;;
            *.zip)       unzip $1;;
            *.Z)         uncompress $1;;
            *.7z)        7z x $1;;
            *)           echo "'$1' unfortunately, could not be be extracted" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


# Attempts to extract files from a corrupted zip
#
# @dependencies
#   java
function corruptzipextract() {
  jar -xvf "$1"
}