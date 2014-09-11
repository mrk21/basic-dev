#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set private.firefox_vimperator_escape 1
/bin/echo -n .
$cli set repeat.wait 40
/bin/echo -n .
$cli set repeat.initial_wait 200
/bin/echo -n .
$cli set repeat.consumer_initial_wait 200
/bin/echo -n .
$cli set repeat.consumer_wait 40
/bin/echo -n .
/bin/echo
