;;; gruverboxer-theme.el --- A more guv'er box'er theme.  -*- lexical-binding: t; -*-

;; Copyright (c) 2022 René Huiberts 
;; Author: René Huiberts <rhuibertsjr@gmail.com>
;; (current maintainer)

(require 'autothemer)

(autothemer-deftheme
    gruverboxer "A more guv'er box'er emacs theme."

    ((((class color) (min-colors #xFFFFFF))) ;; Graphical emacs

        (rhjr-background-0   "#282828")
        (rhjr-background-1   "#3c3836")
        (rhjr-background-2   "#504945")
        (rhjr-foreground-0   "#fbf1c7")

        (rhjr-grey-0   "#928374")

        (rhjr-red-0    "#fb4933")
        (rhjr-orange-0 "#fe8019")
        (rhjr-green-0  "#b8bb26")
        (rhjr-yellow-0 "#fabd2f")
        (rhjr-blue-0   "#83a598")
        (rhjr-purple-0 "#d3869b")
        
        (rhjr-frame-colour     rhjr-background-0)
        (rhjr-modeline-colour  rhjr-background-2))

    ((default   (:foreground rhjr-foreground-0  :background rhjr-frame-colour))

     ;; cursor   
     (cursor    (:foreground rhjr-grey-0 :background rhjr-background-2))
     (region    (:background rhjr-background-1))

     ;; states   
     (succes  (:foreground rhjr-green-0  :bold t))
     (error   (:foreground rhjr-red-0    :bold t))
     (warning (:foreground rhjr-yellow-0 :bold t))

     (highlight (:foreground rhjr-yellow-0))

     ;; window
     (fringe (:background rhjr-frame-colour))
     (vertical-border (:foreground rhjr-modeline-colour ))

     (mode-line (:background rhjr-modeline-colour))
     (mode-line-inactive (:background rhjr-background-1
                          :foreground rhjr-foreground-0
                             :box nil))

     (minibuffer-prompt (:foreground rhjr-green-0 ))

     ;; font-lock-
     (font-lock-keyword-face       (:foreground rhjr-red-0))
     (font-lock-builtin-face       (:foreground rhjr-yellow-0))
     (font-lock-comment-face       (:foreground rhjr-grey-0))
     (font-lock-string-face        (:foreground rhjr-green-0))
     (font-lock-preprocessor-face  (:foreground rhjr-blue-0))
     (font-lock-constant-face      (:foreground rhjr-blue-0))
     (font-lock-type-face          (:foreground rhjr-red-0))
     (font-lock-variable-name-face (:foreground rhjr-blue-0))
     (font-lock-function-name-face (:foreground rhjr-yellow-0))

     (button (:foreground rhjr-green-0))

     ;; line numbers
     (line-number   (:foreground rhjr-grey-0 :background rhjr-background-0))
     (line-number-current-line (:foreground rhjr-orange-0
                                   :background rhjr-background-0))

     ;;; MODES
     ;; ido
     (ido-only-match (:foreground rhjr-green-0))   
     (ido-subdir     (:foreground rhjr-yellow-0))   

     ;; dired   
     (dired-header (:foreground rhjr-green-0))

     ;; treesitter
     (tree-sitter-hl-face:type             (:foreground rhjr-yellow-0))   
     (tree-sitter-hl-face:type.builtin     (:foreground rhjr-red-0))   

     (tree-sitter-hl-face:constant           (:foreground rhjr-purple-0))   
     (tree-sitter-hl-face:variable           (:foreground rhjr-foreground-0))   
     (tree-sitter-hl-face:variable.builtin   (:foreground rhjr-red-0))   
     (tree-sitter-hl-face:variable.parameter (:foreground rhjr-blue-0))   
     (tree-sitter-hl-face:variable.special   (:foreground rhjr-orange-0))   

     (tree-sitter-hl-face:property.definition (:foreground rhjr-blue-0 :italic -1))   

     (tree-sitter-hl-face:operator      (:foreground rhjr-foreground-0))   

     (tree-sitter-hl-face:function      (:foreground rhjr-green-0))   
     (tree-sitter-hl-face:function.call (:foreground rhjr-green-0))   
     (tree-sitter-hl-face:method.call   (:foreground rhjr-green-0))   

     (tree-sitter-hl-face:punctuation.bracket   (:foreground rhjr-orange-0))   
     (tree-sitter-hl-face:punctuation.delimiter (:foreground rhjr-orange-0))   

     ;; company
     (company-tooltip      (:background rhjr-background-1))   
     (company-tooltip-common               (:foreground rhjr-blue-0))
     (company-tooltip-selection            (:foreground rhjr-purple-0
                                           :background rhjr-background-2))   
     (company-tooltip-annotation           (:foreground rhjr-green-0))   
     (company-tooltip-annotation-selection (:foreground rhjr-orange-0))   

     (company-scrollbar-bg (:background rhjr-background-2))   
     (company-scrollbar-fg (:background rhjr-background-1))   

     (company-preview (:background rhjr-background-0 :foreground rhjr-purple-0))   
     (company-preview-common (:foreground rhjr-grey-0))   
     (company-preview-common-selection (:foreground rhjr-green-0))   
     (company-preview-search (:foreground rhjr-grey-0))   

     (company-template-field (:foreground rhjr-orange-0))   

     ;; show paren   
     (show-paren-match    (:foreground rhjr-blue-0 :bold t))
     (show-paren-mismatch (:foreground rhjr-red-0  :bold t))

     ;; isearch   
     (isearch (:background rhjr-orange-0))
     (isearch-fail (:background rhjr-red-0))
     (match (:background rhjr-yellow-0))

     ;; magit   
     (magit-diff-whitespace-warning (:background rhjr-red-0))   

     ;; flycheck
     (ccls-skipped-range-face (:foreground rhjr-grey-0))   

     ))
(provide-theme 'gruverboxer)    
