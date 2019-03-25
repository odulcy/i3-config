#!/bin/sh
revert() {
xset dpms 0 0 0
}
trap revert HUP INT TERM
xset +dpms dpms 5 5 5
i3lock -n -i ~/.config/i3/logout.png
revert
