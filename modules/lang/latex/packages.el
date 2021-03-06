;; -*- no-byte-compile: t; -*-
;;; lang/latex/packages.el

(package! auctex :pin "fafa28d542")
(package! adaptive-wrap :pin "1810c0ee8d")
(package! latex-preview-pane :pin "5297668a89")

;; Optional module features:

(when (featurep! +latexmk)
  (package! auctex-latexmk :pin "4d35352265"))

;; Features according to other user selected options

(when (featurep! :completion company)
  (package! company-auctex :pin "48c42c58ce")
  (package! company-reftex :pin "33935e9654")
  (package! company-math :pin "600e494496"))
(when (featurep! :completion ivy)
  (package! ivy-bibtex :pin "d4471232be"))
(when (featurep! :completion helm)
  (package! helm-bibtex :pin "d4471232be"))
