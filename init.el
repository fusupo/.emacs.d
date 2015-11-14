(require 'org)
(require 'ob-tangle)



;; load up all literate org-mode files in this directory
(defvar config-files '("/Users/fusupo/.emacs.d/xtof_secrets.org"
		       "/Users/fusupo/.emacs.d/xtof_init.org"
		       "/Users/fusupo/.emacs.d/xtof_config.org"
		       "/Users/fusupo/.emacs.d/xtof_org.org"
		       "/Users/fusupo/.emacs.d/xtof_startup.org"))
(defun load-config (filename)
  (org-babel-load-file filename))
(mapc #'load-config config-files)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-function-call ((t (:inherit default :foreground "DarkSeaGreen4"))))
 '(neo-dir-link-face ((t (:foreground "#528B8B" :weight bold))))
 '(neo-vc-default-face ((t (:foreground "#7C6F64"))))
 '(neo-vc-edited-face ((t (:foreground "#DD6F48"))))
 '(neo-vc-up-to-date-face ((t (:foreground "#FDF4C1"))))
 '(org-mode-line-clock ((t (:background "grey75" :foreground "red" :box (:line-width -1 :style released-button)))) t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote bar))
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "40664277ccd962bc373bff67affb4efa7c9bf3dabd81787e6e08fe080ba9645f" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "2d7e4feac4eeef3f0610bf6b155f613f372b056a2caae30a361947eab5074716" "30a8a5a9099e000f5d4dbfb2d6706e0a94d56620320ce1071eede5481f77d312" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" default)))
 '(org-agenda-files
   (quote
    ("~/Documents/org/inbox.org" "~/Documents/org/activity_log.org" "~/Documents/org/meditation_log.org" "~/Documents/org/dream_log.org" "~/Documents/org/memos.org" "~/Documents/org/flagged.org" "~/Documents/org/projects.org" "~/Documents/org/notes.org" "~/Documents/org/tga.org")))
 '(powerline-default-separator (quote contour))
 '(sml/mode-width
   (if
       (eq powerline-default-separator
           (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   nil)))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (car powerline-default-separator-dir)))
                   nil
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(timesheet-invoice-number 104))
