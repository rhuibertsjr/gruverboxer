;;; gruverboxer-theme.el --- A more guv'er box'er theme.  -*- lexical-binding: t; -*-

;; Copyright (c) 2022 René Huiberts 
;; Author: René Huiberts <rhuibertsjr@gmail.com>
;; (current maintainer)

(require 'autothemer)

(autothemer-deftheme
    gruverboxer "A more guv'er box'er emacs theme."

    ((((class color) (min-colors #xFFFFFF))) ;; Graphical emacs

        (rhjr-background   "#282828")
        (rhjr-background-1 "#3c3836")
        (rhjr-background-2 "#504945")
        (rhjr-foreground   "#fbf1c7")

        (rhjr-grey   "#928374")
        (rhjr-grey-1 "#504945")

        (rhjr-red    "#fb4933")
        (rhjr-orange "#fe8019")
        (rhjr-green  "#b8bb26")
        (rhjr-yellow "#fabd2f")
        (rhjr-blue   "#83a598")
        (rhjr-purple "#d3869b")

        (rhjr-aqua   "#8ec07c")

        (rhjr-selection        "#504945")
        (rhjr-frame-colour     rhjr-background)
        (rhjr-modeline-colour  rhjr-background-2))

    ((default   (:foreground rhjr-foreground  :background rhjr-frame-colour))

     ;; cursor   
     (cursor    (:foreground rhjr-grey :background rhjr-foreground))
     (region    (:background rhjr-selection))

     ;; states   
     (success   (:foreground rhjr-green  :bold t))
     (error     (:foreground rhjr-red    :bold t))
     (warning   (:foreground rhjr-yellow :bold t))

     (highlight (:foreground rhjr-yellow))

     (bold       (:bold t))   

     ;; window
     (fringe    (:background rhjr-frame-colour))
     (vertical-border (:foreground rhjr-modeline-colour ))

     (mode-line (:background rhjr-modeline-colour))
     (mode-line-inactive (:background rhjr-background-1
                          :foreground rhjr-foreground
                          :box nil))

     (minibuffer-prompt (:foreground rhjr-green ))

     ;; font-lock-
     (font-lock-keyword-face       (:foreground rhjr-red))
     (font-lock-builtin-face       (:foreground rhjr-yellow))
     (font-lock-comment-face       (:foreground rhjr-grey))
     (font-lock-string-face        (:foreground rhjr-green))
     (font-lock-preprocessor-face  (:foreground rhjr-aqua))
     (font-lock-constant-face      (:foreground rhjr-blue))
     (font-lock-type-face          (:foreground rhjr-red))
     (font-lock-variable-name-face (:foreground rhjr-blue))
     (font-lock-function-name-face (:foreground rhjr-yellow))

     (button                       (:foreground rhjr-green))

     ;; line numbers
     (line-number                  (:foreground rhjr-grey
                                    :background rhjr-background))
     (line-number-current-line     (:foreground rhjr-orange
                                    :background rhjr-background))

     ;;; MODES
     ;; ido
     (ido-only-match  (:foreground rhjr-green))   
     (ido-first-match (:foreground rhjr-green))   
     (ido-subdir      (:foreground rhjr-yellow))   

     ;; dired   
     (dired-header    (:foreground rhjr-green))

     ;; treesitter
     (tree-sitter-hl-face:type                (:foreground rhjr-yellow))   
     (tree-sitter-hl-face:type.builtin        (:foreground rhjr-red))   

     (tree-sitter-hl-face:constant            (:foreground rhjr-purple))   
     (tree-sitter-hl-face:variable            (:foreground rhjr-foreground))   
     (tree-sitter-hl-face:variable.builtin    (:foreground rhjr-red))   
     (tree-sitter-hl-face:variable.parameter  (:foreground rhjr-blue))   
     (tree-sitter-hl-face:variable.special    (:foreground rhjr-orange))   

     (tree-sitter-hl-face:property            (:foreground rhjr-blue
                                               :slant 'normal))   
     (tree-sitter-hl-face:property.definition (:foreground rhjr-blue
                                               :slant 'normal))   

     (tree-sitter-hl-face:operator      (:foreground rhjr-foreground))   

     (tree-sitter-hl-face:function      (:foreground rhjr-green))   
     (tree-sitter-hl-face:function.call (:foreground rhjr-green))   
     (tree-sitter-hl-face:method.call   (:foreground rhjr-green))   

     (tree-sitter-hl-face:punctuation.bracket   (:foreground rhjr-orange))   
     (tree-sitter-hl-face:punctuation.delimiter (:foreground rhjr-orange))   

     ;; company
     (company-tooltip                      (:background rhjr-background-1))   
     (company-tooltip-common               (:foreground rhjr-blue))
     (company-tooltip-selection            (:foreground rhjr-purple
                                            :background rhjr-background-2))   
     (company-tooltip-annotation           (:foreground rhjr-green))   
     (company-tooltip-annotation-selection (:foreground rhjr-orange))   

     (company-scrollbar-bg             (:background rhjr-background-2))   
     (company-scrollbar-fg             (:background rhjr-background-1))   

     (company-preview                  (:background rhjr-background
                                        :foreground rhjr-purple))   
     (company-preview-common           (:foreground rhjr-grey))   
     (company-preview-common-selection (:foreground rhjr-green))   
     (company-preview-search           (:foreground rhjr-grey))   

     (company-template-field           (:foreground rhjr-orange))   

     ;; show paren   
     (show-paren-match     (:foreground rhjr-blue :bold t))
     (show-paren-mismatch  (:foreground rhjr-red  :bold t))

     ;; isearch   
     (isearch              (:background rhjr-orange))
     (isearch-fail         (:background rhjr-red))
     (match                (:background rhjr-yellow))

     ;; magit
     (git-commit-summary            (:foreground rhjr-foreground))   
     (magit-diff-whitespace-warning (:background rhjr-red))   

     ;; flycheck
     (ccls-skipped-range-face    (:foreground rhjr-grey))   

     ;; lsp 
     (lsp-face-highlight-read    ((t :inherit 'highlight)))
     (lsp-face-highlight-textual ((t :inherit 'highlight)))

     (lsp-ui-doc-background    (:foreground rhjr-background-2))   

     ;; flycheck
     (flycheck-info            (:underline (:style 'wave :color rhjr-blue)))
     (flycheck-warning         (:underline (:style 'wave :color rhjr-orange)))
     (flycheck-error           (:underline (:style 'wave :color rhjr-red)))

     (flycheck-fringe-info     (:foreground rhjr-blue))   
     (flycheck-fringe-warning  (:foreground rhjr-orange))   
     (flycheck-fringe-error    (:foreground rhjr-red))   

     (flycheck-error-list-info (:foreground rhjr-purple))   

     ;; compilation   
     (compilation-info         (:foreground rhjr-blue)) 
        
     ;; org
     (org-level-1       (:foreground rhjr-purple :bold t))   
     (org-level-2       (:foreground rhjr-blue))   
     (org-level-3       (:foreground rhjr-yellow))   
     (org-level-4       (:foreground rhjr-red))   

     (org-headline-done (:foreground rhjr-blue))   

     (org-link          (:foreground rhjr-purple))   
     (org-todo          (:foreground rhjr-red :bold t))   
     (org-done          (:foreground rhjr-green))   
     (org-date          (:foreground rhjr-grey))   
     (org-tag           (:foreground rhjr-yellow))   

     (org-drawer             (:foreground rhjr-yellow))   
     (org-special-keyword    (:foreground rhjr-yellow))   

     (org-document-title        (:foreground rhjr-grey))   
     (org-document-info-keyword (:foreground rhjr-grey))   

     (org-agenda-structure      (:foreground rhjr-purple))   
     (org-agenda-date           (:foreground rhjr-blue))   

     ;; Custom syntax highlight   

     ;; C / C++   
     (rhuib-gruverboxer:keyword         (:foreground rhjr-red))
     (rhuib-gruverboxer:variable        (:foreground rhjr-foreground))
     (rhuib-gruverboxer:constant        (:foreground rhjr-aqua))

     (rhuib-gruverboxer:include         (:foreground rhjr-aqua))

     (rhuib-gruverboxer:function       (:foreground rhjr-green))
     (rhuib-gruverboxer:function.call  (:foreground rhjr-green))
     (rhuib-gruverboxer:function.macro (:foreground rhjr-orange))
     (rhuib-gruverboxer:parameter      (:foreground rhjr-blue))

     (rhuib-gruverboxer:field.enumerate (:foreground rhjr-purple))
     (rhuib-gruverboxer:field.struct    (:foreground rhjr-blue))
     (rhuib-gruverboxer:property        (:foreground rhjr-blue))

     (rhuib-gruverboxer:type     (:foreground rhjr-yellow))
     (rhuib-gruverboxer:number   (:foreground rhjr-purple))
     (rhuib-gruverboxer:string          (:foreground rhjr-green))
     (rhuib-gruverboxer:string.escape   (:foreground rhjr-orange))
     (rhuib-gruverboxer:character       (:foreground rhjr-green))
     (rhuib-gruverboxer:builtin         (:foreground rhjr-purple))

     (rhuib-gruverboxer:punctuation.delimiter (:foreground rhjr-orange))
     (rhuib-gruverboxer:punctuation.bracket   (:foreground rhjr-orange))
     (rhuib-gruverboxer:punctuation.special   (:foreground rhjr-orange))
     (rhuib-gruverboxer:operator              (:foreground rhjr-foreground))
     (rhuib-gruverboxer:_parent               (:foreground rhjr-foreground))
        
     ))
(provide-theme 'gruverboxer)    
