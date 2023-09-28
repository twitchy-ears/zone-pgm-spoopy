# zone-pgm-spoopy
A spoopy Halloween zone mode for Emacs

Essentially randomly replaces characters in your buffer with spoopy emoji, by
default this is from the following list: ("🎃" "💀" "👻" "🧟" "🕷️" "🧛" "🦇" "🐈‍⬛" "🪦" "⚰️")

This is a very silly little lunchtime hack and the usage instructions look
something like this: 

(require 'zone-pgm-spoopy)

;; Add it to the list
(vconcat zone-programs [zone-pgm-spoopy])

;; Make it the only one
(setq zone-programs [zone-pgm-spoopy])

;; Engage the spoop
M-x zone

