#!/usr/bin/env sh

# an option: https://mathiasbynens.be/notes/shell-script-mac-apps

if [ $# -eq 0 ]
  then
    echo "Please specify 'on' or 'off'."
    exit
fi

if [ "$1" = "on" ]
  then
    open /Applications/Telegram.app
    open /Applications/LINE.app
    open /Applications/WhatsApp.app
    open /Applications/Signal.app
    exit
fi

if [ "$1" = "off" ]
  then
    osascript -e 'quit app "Signal"'
    osascript -e 'quit app "WhatsApp"'
    osascript -e 'quit app "LINE"'
    osascript -e 'quit app "Telegram"'
    exit
fi

echo "Please specify 'on' or 'off'."
exit


