;;; zone-pgm-spoopy.el --- A zone that is all spoop all the time for Halloween -*- lexical-binding: t -*-

;; Copyright 2023 - Twitchy Ears

;; Author: Twitchy Ears https://github.com/twitchy-ears/
;; URL: https://github.com/twitchy-ears/zone-pgm-spoopy
;; Version: 0.1
;; Package-Requires ((emacs "24.1"))
;; Keywords: games

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; History
;;
;; 2023-09-28 - initial version

;;; Commentary:

;; (require 'zone-pgm-spoopy)
;;
;; ;; Add it to the list
;; (vconcat zone-programs [zone-pgm-spoopy])
;;
;; ;; Make it the only one
;; (setq zone-programs [zone-pgm-spoopy])
;;
;; ;; Engage the spoop
;; M-x zone

;; TODO:
;;
;; Should really clone the buffer better but thats a general zone complaint

;;; Code:
(defvar zone-pgm-spoopy-emoji-list '("🎃" "💀" "👻" "🧟" "🕷️" "🧛" "🦇" "🐈‍⬛" "🪦" "⚰️") "Contains the list of suitably spoopy emoji to replace characters in your buffer with")
          
(defun zone-pgm-spoopy ()
  "Zones to replace random characters in your buffer with spoopy emoji.  Warning this sometimes weirds up the display because these are generally wider than many other characters so it can make your lines overflow your frame so you sometimes jump sideways and then back again."
  (let ((curr-pos (point)))
    (while (not (input-pending-p))
      (let ((buffer-pos (random (point-max))))
        (goto-char buffer-pos)
        
        ;; I don't like it eating newlines
        ;; it breaks up the outline of the text you're looking at
        ;; and makes it harder to follow
        (if (not (looking-at "\n"))
            (progn 
              (delete-char 1)
              (let ((item-choice (random (length zone-pgm-spoopy-emoji-list))))
                (insert (elt zone-pgm-spoopy-emoji-list item-choice)))))
        (zone-park/sit-for curr-pos 0.1)))))


(provide 'zone-pgm-spoopy)
;;; zone-pgm-spoopy.el ends here
