;;; dark-nature-theme.el --- Dark Nature custom theme for faces

;; Copyright (C) 2015  Vagn Johansen

;; Author: Vagn Johansen <gonz808@hotmail.com>
;; Keywords: faces
;; Package-Version:
;; Version: 0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.


;;; Commentary:
;;
;; A dark theme
;;
;; In case of cursor color trouble:
;;
;;   (set-cursor-color "yellow")
;;   (add-to-list 'default-frame-alist '(cursor-color . "yellow"))

;;; Code:

(deftheme dark-nature
  "A dark green/brown color theme (VJ 2011)")

(let ((class '((class color) (min-colors 89)))
       ;; Dark-Nature palette colors.
       (blue-1 "#729fcf") (blue-2 "#3465a4") (blue-3 "#204a87")
       )

  (custom-theme-set-faces
    'dark-nature
    `(default ((,class (:foreground "wheat" :background "black"))))
    `(cursor ((,class (:foreground "yellow"))))
    ;; Highlighting faces
    `(fringe ((,class (:background "darkslategrey"))))
    `(highlight ((,class (:background "goldenrod4" :foreground "white"))))
    `(region ((,class (:background "blue4"  :foreground nil))))
    ;;   `(secondary-selection ((,class (:background ,blue-0))))
    `(isearch ((,class (:foreground "white" :background "#448"))))
    `(lazy-highlight ((,class (:background "#264" :foreground "white"))))
    `(trailing-whitespace ((,class (:background "#600"))))

    ;; Escape and prompt faces
    `(minibuffer-prompt ((,class (:foreground "cyan"))))
    `(escape-glyph ((,class (:foreground "grey"))))
    ;; Font lock faces
    `(font-lock-builtin-face ((,class (:foreground "LightSteelBlue"))))
    `(font-lock-comment-face ((,class (:foreground "#bb6"))))
    `(font-lock-constant-face ((,class (:foreground "#e29439")))) ; c28439
    `(font-lock-function-name-face ((,class (:foreground "LightSkyBlue"))))
    `(font-lock-keyword-face ((,class (:foreground "#A1C2DA"))))
    `(font-lock-string-face ((,class (:foreground "#A5C261"))))
    `(font-lock-type-face ((,class (:foreground "#44f048")))) ; 6e9cbe 9e9cbe 44b048
    `(dired-header ((,class (:foreground "green2"))))
    `(dired-directory ((,class (:foreground "deepskyblue" :bold t))))
    `(font-lock-variable-name-face ((,class (:foreground "LightGoldenrod"))))
    `(font-lock-warning-face ((,class (:foreground "Pink" :weight bold))))
    ;; Button and link faces
    `(button ((,class (:underline t :foreground "#a5beef"))))
    `(link ((,class (:underline t :foreground "cyan2"))))
    `(link-visited ((,class (:underline t :foreground "violet"))))

    `(flymake-errline ((,class (:background nil :underline "red"))))
    `(flymake-warnline ((,class (:background nil :underline "magenta3"))))

    '(header-line
       ((t
	  (:height 0.9 :box
	    (:line-width -1 :color "grey20" :style released-button)
	    :foreground "grey90" :background "grey20"
	    ))))

    '(show-paren-match ((t (:background "RoyalBlue"))))
    '(show-paren-mismatch ((t (:background "red2" :foreground "white"))))
    '(which-func ((t (:foreground "navy"))))
    '(stripes-face ((t (:background "#243434"))))

    '(erc-input-face ((t (:foreground "lightblue"))))
    '(erc-my-nick-face ((t (:foreground "cyan"))))

    `(cperl-array-face ((,class (:foreground "#f0a080"))))
    `(cperl-hash-face ((,class (:foreground "#80f0b0"))))

    ;; Darken these
    `(ediff-current-diff-C ((,class (:background "#555522"))))
    `(ediff-fine-diff-C ((,class (:background "#888822"))))
    ))


(provide-theme 'dark-nature)

;;; dark-nature-theme.el ends here
