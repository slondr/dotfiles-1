(use-package modern-cpp-font-lock
  :ensure t

  :hook
  ((c++-mode . modern-c++-font-lock-mode)))


(require 'cc-mode)


(defun cc-ending-semicolon ()
  "Goto the end of the line and insert a semicolon if one is not present at the end of the line"
  (interactive)
  (end-of-line)
  (unless (looking-back ";")
	(insert ";")))


(key-chord-define c-mode-base-map ";;" #'cc-ending-semicolon)
