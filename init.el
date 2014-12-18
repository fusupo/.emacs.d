(require 'org)
(require 'ob-tangle)



;; load up all literate org-mode files in this directory
(defvar config-files '("/Users/fusupo/.emacs.d/xtof_config.org"
		       "/Users/fusupo/.emacs.d/xtof_init.org"
		       "/Users/fusupo/.emacs.d/xtof_startup.org"))
(defun load-config (filename)
  (org-babel-load-file filename))
(mapc #'load-config config-files)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fci-dash-pattern 0.25)
 '(fci-rule-color "DeepSkyBlue4")
 '(fci-rule-column 80)
 '(fci-rule-use-dashes t)
 '(global-fci-mode t)
 '(org-agenda-files
   (quote
    ("~/Documents/org/inbox.org"
     "~/Documents/org/log.org"
     "~/Documents/org/memos.org"
     "~/Documents/org/flagged.org"
     "~/Documents/org/projects.org"
     "~/Documents/org/notes.org"
     "/Users/fusupo/Documents/org/.org2blog.org"
     "/Users/fusupo/Documents/org/cooking.org"
     "/Users/fusupo/Documents/org/meditationlog.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (scheme . t))))
 '(org-level-color-stars-only t)
 '(org-src-fontify-natively t)
 '(org-stuck-projects (quote ("+LEVEL=2/-DONE" ("NEXT") nil ""))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
