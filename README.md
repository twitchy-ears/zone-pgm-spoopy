# zone-pgm-spoopy
A spoopy Halloween zone mode for Emacs

![An emacs window showing the code from this repo with a number of halloween related emojis randomly scattered across it](/../screenshots/screenshots/zone-pgm-spoopy-2023-09-28.png?raw=true "A Very Spoopy Zone")

Essentially randomly replaces characters in your buffer with spoopy emoji, by
default this is from the following list: ("🎃" "💀" "👻" "🧟" "🕷️" "🧛" "🦇" "🐈‍⬛" "🪦" "⚰️")

This is a very silly little lunchtime hack and the usage instructions look
something like this: 

```
(require 'zone-pgm-spoopy)

;; Add it to the list
(vconcat zone-programs [zone-pgm-spoopy])

;; Make it the only one
(setq zone-programs [zone-pgm-spoopy])

;; Engage the spoop
M-x zone
```
