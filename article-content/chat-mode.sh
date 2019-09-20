#!/usr/bin/env sh

# handy: ln -s ~/work/siggu.org/chat-mode.sh /usr/local/bin/chat-mode
# consider this option: https://mathiasbynens.be/notes/shell-script-mac-apps

if [ $# -eq 0 ]
  then
    echo "Please specify 'on' or 'off'."
    exit
fi

if [ "$1" = "on" ]
  then
    open /Applications/LINE.app
    open /Applications/WhatsApp.app
    open /Applications/Signal.app
    open /Applications/Messages.app
    open /Applications/Telegram.app
    open /Applications/Keybase.app
    exit
fi

if [ "$1" = "off" ]
then
    osascript -e 'quit app "LINE"'
    osascript -e 'quit app "WhatsApp"'
    osascript -e 'quit app "Signal"'
    osascript -e 'quit app "Messages"'
    osascript -e 'quit app "Telegram"'
    osascript -e 'quit app "Keybase"'
    exit
fi

echo "Please specify 'on' or 'off'."
exit
