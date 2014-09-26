# instagif2vid.plugin.sh
# ver 0.1
# 2014-01-14
# Francis San Juan <francis@ftsanjuan.com>
#
# Converts an animated gif to an Instagram-compatible mp4 video.
#
# @dependencies
#   imagemagick and ffmpeg
#
# @file_path
#   Path to gif file (absolute path or file in current working directory)
#
instagif2vid() {
  CWD=`pwd`
  if [ ! -z "$1" ]; then
    if [ ! -f $1 ] || [ ! -f "$CWD/$1" ]; then
      echo "Please enter a valid file path."
      return 0
    fi

    # set output path
    if [ -f $1 ]; then
      OUT="$(basename $1 .gif).mp4"
    else
      OUT="$CWD/$(basename $1 .gif).mp4"
    fi

    # begin processing
    MAX_WIDTH=640
    MAX_HEIGHT=640
    TMPFILE=`mktemp /tmp/$$.mpg`

    # convert to mpg temporarily
    convert "$CWD/$1" $TMPFILE

    # scale and convert to mp4
    echo "Rescaling and outputting final file..."
    ffmpeg -i $TMPFILE -vcodec mpeg4 -b:v 1200k -acodec libfaac -b:a 128k -vf "scale=iw*min($MAX_WIDTH/iw\,$MAX_HEIGHT/ih):ih*min($MAX_WIDTH/iw\,$MAX_HEIGHT/ih),pad=$MAX_WIDTH:$MAX_HEIGHT:(ow-iw)/2:(oh-ih)/2" $OUT
    rm $TMPFILE
  else
    echo "Please enter a valid file path."
  fi
}