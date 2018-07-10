

function debug {
  echo "🍌  $1"
}

function enableFont {
  local FONT=$1

  debug "Linking files..."
  local BLIZZFONTS="ARIALN FRIENDS FRIZQT__ MORPHEUS skurri"

  for f in $BLIZZFONTS; do
    debug "Removing ../$f.ttf"
    rm ../$f.ttf
  done

  for f in $BLIZZFONTS; do
    debug "$FONT --> ../$f.ttf"
    ln $FONT ../$f.ttf
  done

  debug "Done!"
}

OPTIONS=./*.ttf

select opt in $OPTIONS;
do
  enableFont $opt
  exit
done
