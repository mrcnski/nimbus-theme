;;; nimbus-theme.el --- An awesome dark theme -*- lexical-binding: t; -*-
;;
;; Filename:    nimbus-theme.el
;; Description: An awesome dark theme
;; Author:      Marcin Swieczkowski <marcin.swieczkowski@gmail.com>
;;              See README.md for full list of contributors.
;; Created:     Thu Mar 2 22:19:19 CET 2017
;; Version:     1.0.0
;; Package-Requires: ((emacs "24.1"))
;; URL:         https://github.com/m-cat/nimbus-theme
;; Keywords:    faces
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; About:
;;
;; The best dark theme for Emacs.
;;
;; See README.md for more info.
;;
;; Installing:
;;
;; See README.md for the most up-to-date installation instructions.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
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
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(deftheme nimbus "An awesome dark theme.")

(let* (
       ;; Define the palette.

       (lighter-green  "#8fbc8f")
       (light-green    "#9ccc65")
       (green          "#6aaf50")
       (dark-green     "#1d9a79")
       (darker-green   "#058945")
       (lighter-blue   "#86b5e8")
       (light-blue     "#68a5e9")
       (blue           "#598bc1")
       (dark-blue      "#267E99")
       ;; (light-orange   "#eaaa0c")
       (orange         "#df9522")
       (dark-tan       "#7d7c61")
       (bright-yellow  "#fffe0a")
       (yellow         "#baba36")
       (pink           "#cd9595")
       (purple         "#ab75c3")
       (brown          "#987654")
       (red            "#d65946")
       (dark-red       "#ad3632")

       (lightest-gray  "#a0a0a0")
       (lighter-gray   "#959595")
       (light-gray     "#858585")
       (gray           "#757575")
       (dark-gray      "#656565")
       (darker-gray    "#454545")
       (darkerer-gray  "#404040")
       (darkest-gray   "#353535")
       (blue-gray      "#608079")
       (white          "#ffffff")
       (black          "#000000")

       (green-bg        "#11472b")
       (teal-bg         "#114747")
       (dark-teal-bg    "#112b2b")
       (gray-bg         "#2b2b2b")
       (blue-bg         "#112b47")
       (light-purple-bg "#2b2b47")
       (purple-bg       "#2b1147")
       (red-bg          "#47112b")

       (nimbus-err     "#ff0000")
       (nimbus-success light-green)
       (nimbus-warn    "#f57e00")

       (bg             "#1a1a1a")
       (fg             "#bdbdb3")

       ;; Define color variables.

       (cursor         nimbus-warn)
       (fringe         "#212121")

       (archive        orange)
       (code           orange)
       (current        yellow)
       (date           light-blue)
       (executable     red)
       (file           blue)
       (file-suffix    light-gray)
       (hash           dark-tan)
       (heading        purple)
       (hl-line        blue-bg)
       (ignore         blue-gray)
       (indent         darker-gray)
       (key            blue)
       (line           blue-gray)
       (line-current   dark-green)
       (name           dark-green)
       (number         orange)
       (selection      purple-bg)
       (separator      orange)
       (special        blue-gray)
       (summary        red)
       (tag            dark-blue)

       (lazy           red)
       (match          green)
       (search         blue)

       (diff-added      green)
       (diff-added-bg   green-bg)
       (diff-changed    orange)
       (diff-changed-bg purple-bg)
       (diff-removed    red)
       (diff-removed-bg red-bg)

       (diff-markers    bg)
       (diff-markers-bg light-gray)

       (rainbow-1       purple)
       (rainbow-2       green)
       (rainbow-3       orange)
       (rainbow-4       light-blue)
       (rainbow-5       yellow)
       (rainbow-6       green)
       (rainbow-7       orange)
       (rainbow-8       light-blue)
       (rainbow-9       yellow)
       )

  ;; Set faces.
  (custom-theme-set-faces
   `nimbus ;; You must use the same theme name here...
   `(default ((t (:foreground ,fg :background ,bg :bold nil))))

   `(cursor ((t (:foreground ,black :background ,cursor))))
   `(fringe ((t (:inherit default :background ,fringe))))
   `(highlight ((t (:background ,teal-bg))))
   `(link ((t (:foreground ,lighter-blue :underline t))))
   `(link-visited ((t (:foreground ,blue-gray :underline t))))
   `(region ((t (:background ,green-bg))))
   `(shadow ((t (:foreground ,light-gray :background ,bg))))
   `(tooltip ((t (:foreground ,bg :background ,fg))))

   `(error ((t (:foreground ,nimbus-err :bold t :underline nil :slant normal))))
   `(success ((t (:foreground ,nimbus-success :bold t :underline nil :slant normal))))
   `(warning ((t (:foreground ,nimbus-warn :bold t :underline nil :slant normal))))

   ;;; Font lock

   `(font-lock-builtin-face ((t (:foreground ,blue))))
   `(font-lock-comment-face ((t (:foreground ,light-gray :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-function-name-face ((t (:foreground ,dark-green))))
   `(font-lock-keyword-face ((t (:foreground ,blue))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-preprocessor-face ((t (:foreground ,orange))))
   `(font-lock-type-face ((t (:foreground ,red))))
   `(font-lock-constant-face ((t (:foreground ,purple))))
   `(font-lock-warning-face ((t (:inherit warning))))
   `(font-lock-variable-name-face ((t (:foreground ,yellow))))
   `(font-lock-doc-face ((t (:inherit font-lock-comment-face :foreground ,lighter-green))))

   ;;; Built-in

   `(button ((t (:foreground ,blue :underline t))))
   `(header-line ((t (:background ,light-purple-bg :foreground ,fg))))
   `(isearch ((t (:foreground ,black :background ,search))))
   `(lazy-highlight ((t (:foreground ,black :background ,lazy))))
   `(linum ((t (:inherit fringe :foreground ,line))))
   `(match ((t (:foreground ,black :background ,match))))
   `(popup-tip-face ((t (:background ,fg :foreground ,bg))))
   `(trailing-whitespace ((t (:foreground ,white :underline t))))
   `(vertical-border ((t (:foreground ,indent))))

   ;;; Modes

   ;; ace-jump
   `(ace-jump-face-background ((t (:inherit font-lock-comment-face))))
   `(ace-jump-face-foreground ((t (:foreground ,orange))))

   ;; ace-window
   `(aw-background-face ((t (:foreground ,dark-gray))))
   `(aw-leading-char-face ((t (:foreground ,black :background ,dark-green))))

   ;; anzu
   `(anzu-match-1 ((t (:inherit isearch))))
   `(anzu-match-2 ((t (:inherit lazy-highlight))))
   `(anzu-match-3 ((t (:inherit match))))
   `(anzu-mode-line ((t (:foreground ,bright-yellow :bold nil))))
   `(anzu-mode-line-no-match ((t (:foreground ,nimbus-err :bold nil))))
   `(anzu-replace-to ((t (:foreground ,yellow))))

   ;; auctex
   `(font-latex-bold-face ((t (:inherit bold :foreground ,dark-green))))
   `(font-latex-doctex-documentation-face ((t (:background unspecified))))
   `(font-latex-doctex-preprocessor-face ((t (:inherit (font-latex-doctex-documentation-face font-lock-preprocessor-face)))))
   `(font-latex-italic-face ((t (:inherit italic :foreground ,dark-green))))
   `(font-latex-math-face ((t (:foreground ,purple))))
   `(font-latex-sectioning-5-face ((t (:foreground ,red :weight bold))))
   `(font-latex-sedate-face ((t (:foreground ,brown))))
   `(font-latex-slide-title-face ((t (:inherit font-lock-type-face :weight bold :height 1.2))))
   `(font-latex-string-face ((t (:inherit font-lock-string-face))))
   `(font-latex-verbatim-face ((t (:foreground ,yellow))))
   `(font-latex-warning-face ((t (:inherit font-lock-warning-face))))
   `(TeX-error-description-error ((t (:inherit error :bold t))))
   `(TeX-error-description-tex-said ((t (:foreground ,light-blue))))
   `(TeX-error-description-warning ((t (:foreground ,orange :bold t))))

   ;; auto-complete
   `(ac-candidate-face ((t (:foreground ,black :background ,fg))))
   `(ac-selection-face ((t (:foreground ,fg :background ,selection))))
   `(ac-candidate-mouse-face ((t (:inherit ac-selection-face))))
   `(ac-clang-candidate-face ((t (:inherit ac-candidate-face))))
   `(ac-clang-selection-face ((t (:inherit ac-selection-face))))
   `(ac-completion-face ((t (:inherit font-lock-comment-face :underline t))))
   `(ac-gtags-candidate-face ((t (:inherit ac-candidate-face))))
   `(ac-gtags-selection-face ((t (:inherit ac-selection-face))))
   `(ac-slime-menu-face ((t (:inherit ac-candidate-face))))
   `(ac-slime-selection-face ((t (:inherit ac-selection-face))))
   `(ac-yasnippet-candidate-face ((t (:inherit ac-candidate-face))))
   `(ac-yasnippet-selection-face ((t (:inherit ac-selection-face))))

   ;; auto-dim-other-buffers
   `(auto-dim-other-buffers-face ((t (:background "gray13"))))

   ;; avy
   `(avy-background-face ((t (:foreground ,light-gray))))
   `(avy-goto-char-timer-face ((t (:inherit avy-lead-face :background ,green))))
   `(avy-lead-face ((t (:inherit default :foreground ,black :background ,search))))
   `(avy-lead-face-0 ((t (:inherit avy-lead-face :background ,lazy))))
   `(avy-lead-face-1 ((t (:inherit avy-lead-face :background ,fg))))
   `(avy-lead-face-2 ((t (:inherit avy-lead-face :background ,match))))

   ;; bm
   `(bm-face ((t (:foreground nil :background ,teal-bg))))
   `(bm-fringe-face ((t (:inherit bm-face))))
   `(bm-fringe-persistent-face ((t (:inherit bm-persistent-face))))
   `(bm-persistent-face ((t (:foreground nil :background ,purple-bg))))

   ;; calendar
   `(calendar-today ((t (:foreground ,current))))
   `(calendar-month-header ((t (:foreground ,heading))))
   `(calendar-weekend-header ((t (:foreground ,special :slant italic))))
   `(calendar-weekday-header ((t (:foreground ,date))))

   ;; cargo
   `(cargo-process--ok-face ((t (:inherit success))))
   `(cargo-process--errno-face ((t (:inherit link))))
   `(cargo-process--error-face ((t (:inherit error))))
   `(cargo-process--pointer-face ((t (:foreground ,purple))))
   `(cargo-process--standard-face ((t (:foreground ,yellow))))
   `(cargo-process--warning-face ((t (:foreground ,orange))))

   ;; comint
   `(comint-highlight-prompt ((t (:foreground ,green))))

   ;; company
   `(company-preview ((t (:background ,selection))))
   `(company-preview-common ((t (:foreground ,lightest-gray))))
   `(company-scrollbar-bg ((t (:background ,dark-teal-bg))))
   `(company-scrollbar-fg ((t (:background ,teal-bg))))
   `(company-template-field ((t (:inherit highlight))))
   `(company-tooltip ((t (:foreground ,fg :background ,light-purple-bg))))
   `(company-tooltip-annotation ((t (:inherit font-lock-type-face))))
   `(company-tooltip-annotation-selection ((t (:inherit font-lock-type-face))))
   `(company-tooltip-common ((t (:inherit company-tooltip :foreground ,current))))
   `(company-tooltip-common-selection ((t (:foreground ,fg :background ,selection))))
   `(company-tooltip-mouse ((t (:inherit company-tooltip-selection))))
   `(company-tooltip-selection ((t (:foreground ,fg :background ,selection))))

   ;; compilation
   `(compilation-info ((t (:inherit success))))
   `(compilation-warning ((t (:inherit warning))))
   `(compilation-error ((t (:inherit error))))
   `(compilation-line-number ((t (:foreground ,line))))
   `(compilation-mode-line-exit ((t (:inherit compilation-info))))
   `(compilation-mode-line-run ((t (:inherit compilation-warning))))
   `(compilation-mode-line-fail ((t (:inherit compilation-error))))

   ;; custom
   `(custom-button ((t (:inherit button :underline nil :box t))))
   `(custom-button-mouse ((t (:inherit highlight :box t))))
   `(custom-button-pressed ((t (:foreground nil :background nil))))
   `(custom-button-pressed-unraised ((t (:foreground ,purple))))
   `(custom-button-unraised ((t (:foreground nil :background nil))))
   `(custom-changed ((t (:foreground ,red))))
   `(custom-comment ((t (:foreground ,bg :background ,yellow))))
   `(custom-comment-tag ((t (:foreground ,fg))))
   `(custom-documentation ((t (:inherit font-lock-doc-face))))
   `(custom-face-tag ((t (:foreground ,blue))))
   `(custom-group-subtitle ((t (:foreground ,heading))))
   `(custom-group-tag ((t (:foreground ,heading))))
   `(custom-group-tag-1 ((t (:foreground ,yellow :bold t))))
   `(custom-invalid ((t (:foreground ,bg :background ,red))))
   `(custom-link ((t (:inherit link))))
   `(custom-modified ((t (:foreground ,red))))
   `(custom-rogue ((t (:foreground ,yellow :background ,bg))))
   `(custom-saved ((t (:underline t))))
   `(custom-set ((t (:inherit widget-field))))
   `(custom-state ((t (:foreground ,orange))))
   `(custom-themed ((t (:foreground ,red))))
   `(custom-variable-button ((t (:underline t :bold t))))
   `(custom-variable-tag ((t (:inherit font-lock-variable-name-face))))
   `(custom-visibility ((t (:inherit custom-link))))

   ;; deadgrep
   `(deadgrep-meta-face ((t (:foreground ,line))))
   `(deadgrep-filename-face ((t (:foreground ,file))))

   ;; debbugs
   `(debbugs-gnu-done ((t (:foreground ,gray))))
   `(debbugs-gnu-handled ((t (:foreground ,dark-green))))
   `(debbugs-gnu-new ((t (:foreground ,red))))
   `(debbugs-gnu-pending ((t (:foreground ,blue))))
   `(debbugs-gnu-stale ((t (:foreground ,orange))))
   `(debbugs-gnu-tagged ((t (:foreground ,red))))

   ;; diff
   `(diff-added ((t (:background ,diff-added-bg))))
   `(diff-changed ((t (:background ,diff-changed-bg))))
   `(diff-removed ((t (:background ,diff-removed-bg))))
   `(diff-context ((t (:foreground ,gray))))
   `(diff-file-header ((t (:foreground ,bg :background ,lighter-gray :bold t))))
   `(diff-function ((t (:foreground ,diff-markers :background ,diff-markers-bg))))
   `(diff-header ((t (:inherit diff-function))))
   `(diff-hunk-header ((t (:inherit diff-function))))
   `(diff-index ((t (:inherit diff-function))))
   `(diff-indicator-added ((t (:inherit diff-added))))
   `(diff-indicator-changed ((t (:inherit diff-changed))))
   `(diff-indicator-removed ((t (:inherit diff-removed))))
   `(diff-nonexistent ((t (:background ,white))))
   `(diff-refine-added ((t (:inherit diff-changed :foreground ,diff-added))))
   `(diff-refine-changed ((t (:inherit diff-changed :foreground ,diff-changed))))
   `(diff-refine-removed ((t (:inherit diff-changed :foreground ,diff-removed))))

   ;; diff-hl
   `(diff-hl-insert ((t (:inherit fringe :foreground ,diff-added))))
   `(diff-hl-change ((t (:inherit fringe :foreground ,diff-changed))))
   `(diff-hl-delete ((t (:inherit fringe :foreground ,diff-removed))))

   ;; dired
   `(dired-header ((t (:foreground ,heading))))
   `(dired-flagged ((t (:foreground ,dark-red))))
   `(dired-symlink ((t (:foreground ,yellow))))

   ;; diredfl
   `(diredfl-compressed-file-name ((t (:foreground ,archive))))
   `(diredfl-compressed-file-suffix ((t (:inherit diredfl-compressed-file-name))))
   `(diredfl-date-time ((t (:foreground ,date))))
   `(diredfl-deletion-file-name ((t (:inherit dired-flagged))))
   `(diredfl-deletion ((t (:inherit dired-mark))))
   `(diredfl-dir-heading ((t (:inherit dired-header))))
   `(diredfl-dir-name ((t (:inherit dired-directory))))
   `(diredfl-executable-tag ((t (:foreground ,executable))))
   `(diredfl-flag-mark ((t (:inherit dired-flagged))))
   `(diredfl-flag-mark-line ((t (:background ,selection))))
   `(diredfl-file-name ((t (:foreground ,file))))
   `(diredfl-file-suffix ((t (:foreground ,file-suffix))))
   `(diredfl-ignored-file-name ((t (:foreground ,ignore))))
   `(diredfl-number ((t (:foreground ,number))))
   `(diredfl-symlink ((t (:inherit dired-symlink :slant italic))))

   `(diredfl-dir-priv ((t (:foreground ,purple))))
   `(diredfl-exec-priv ((t (:foreground ,red))))
   `(diredfl-link-priv ((t (:foreground ,blue))))
   `(diredfl-no-priv ((t (:foreground ,blue-gray))))
   `(diredfl-rare-priv ((t (:foreground ,lighter-green))))
   `(diredfl-read-priv ((t (:foreground ,green))))
   `(diredfl-write-priv ((t (:foreground ,light-blue))))

   ;; diredp
   `(diredp-autofile-name ((t (:background ,blue-bg))))
   `(diredp-compressed-file-name ((t (:foreground ,archive))))
   `(diredp-compressed-file-suffix ((t (:inherit diredp-compressed-file-name))))
   `(diredp-date-time ((t (:foreground ,date))))
   `(diredp-deletion ((t (:inherit dired-mark))))
   `(diredp-deletion-file-name ((t (:inherit dired-flagged))))
   `(diredp-dir-heading ((t (:inherit dired-header))))
   `(diredp-dir-name ((t (:inherit dired-directory))))
   `(diredp-executable-tag ((t (:foreground ,executable))))
   `(diredp-file-name ((t (:foreground ,file))))
   `(diredp-flag-mark ((t (:inherit dired-flagged))))
   `(diredp-flag-mark-line ((t (:background ,selection))))
   `(diredp-file-suffix ((t (:foreground ,file-suffix))))
   `(diredp-ignored-file-name ((t (:foreground ,ignore))))
   `(diredp-mode-line-flagged ((t (:inherit dired-flagged))))
   `(diredp-mode-line-marked ((t (:inherit dired-mark))))
   `(diredp-number ((t (:foreground ,number))))
   `(diredp-symlink ((t (:inherit dired-symlink :slant italic))))
   `(diredp-tagged-autofile-name ((t (:inherit diredp-autofile-name))))

   `(diredp-dir-priv ((t (:foreground ,purple))))
   `(diredp-exec-priv ((t (:foreground ,red))))
   `(diredp-link-priv ((t (:foreground ,blue))))
   `(diredp-no-priv ((t (:foreground ,blue-gray))))
   `(diredp-other-priv ((t (:foreground ,fg))))
   `(diredp-rare-priv ((t (:foreground ,lighter-green))))
   `(diredp-read-priv ((t (:foreground ,green))))
   `(diredp-write-priv ((t (:foreground ,light-blue))))

   ;; ediff
   `(ediff-current-diff-A ((t (:background "#482828"))))
   `(ediff-current-diff-B ((t (:background "#284828"))))
   `(ediff-current-diff-C ((t (:background "#484828"))))
   `(ediff-even-diff-A ((t (:background "#191925"))))
   `(ediff-even-diff-B ((t (:background "#191925"))))
   `(ediff-even-diff-C ((t (:background "#191925"))))
   `(ediff-fine-diff-A ((t (:foreground ,fg :background "#694949"))))
   `(ediff-fine-diff-B ((t (:foreground ,fg :background "#496949"))))
   `(ediff-fine-diff-C ((t (:foreground ,fg :background "#696949"))))
   `(ediff-odd-diff-A ((t (:background "#171723"))))
   `(ediff-odd-diff-B ((t (:background "#171723"))))
   `(ediff-odd-diff-C ((t (:background "#171723"))))

   ;; elfeed
   `(elfeed-log-debug-level-face ((t (:foreground ,blue))))
   `(elfeed-log-error-level-face ((t (:inherit error))))
   `(elfeed-log-info-level-face ((t (:inherit success))))
   `(elfeed-log-warn-level-face ((t (:inherit warning))))
   `(elfeed-search-date-face ((t (:foreground ,date))))
   `(elfeed-search-feed-face ((t (:foreground ,yellow))))
   `(elfeed-search-tag-face ((t (:foreground ,tag))))
   `(elfeed-search-title-face ((t (:foreground ,heading))))
   `(elfeed-search-unread-count-face ((t (:foreground ,fg))))

   ;; epa
   `(epa-validity-high ((t (:foreground ,nimbus-success :bold t))))
   `(epa-validity-medium ((t (:foreground ,blue :bold t))))
   `(epa-validity-low ((t (:foreground ,nimbus-warn :bold t))))
   `(epa-validity-disabled ((t (:foreground ,nimbus-err :bold t))))
   `(epa-mark ((t (:inherit dired-mark))))
   `(epa-field-name ((t (:foreground ,heading))))
   `(epa-field-body ((t (:foreground ,light-blue))))

   ;; erc
   `(erc-action-face ((t (:bold t :slant italic))))
   `(erc-current-nick-face ((t (:foreground ,orange))))
   `(erc-button ((t (:inherit link))))
   `(erc-direct-msg-face ((t (:foreground ,red))))
   `(erc-fool-face ((t (:foreground ,hash))))
   `(erc-input-face ((t (:foreground ,current))))
   `(erc-keyword-face ((t (:foreground, light-green :bold t))))
   `(erc-my-nick-face ((t (:foreground ,orange))))
   `(erc-nick-default-face ((t (:foreground ,blue))))
   `(erc-nick-msg-face ((t (:inherit erc-direct-msg-face :bold t))))
   `(erc-notice-face ((t (:foreground ,green))))
   `(erc-pal-face ((t (:foreground ,purple :bold t))))
   `(erc-prompt-face ((t (:foreground ,heading))))
   `(erc-timestamp-face ((t (:foreground ,special))))

   ;; eshell
   `(eshell-ls-backup ((t (:foreground ,ignore))))
   `(eshell-ls-directory ((t (:inherit dired-directory))))
   `(eshell-ls-executable ((t (:foreground ,executable))))
   `(eshell-ls-product ((t (:foreground ,orange))))
   `(eshell-prompt ((t (:foreground ,heading))))

   ;; evil-search-highlight-persist
   `(evil-search-highlight-persist-highlight-face ((t (:inherit match))))

   ;; flycheck
   `(flycheck-info ((t (:underline (:color ,nimbus-success :style wave)))))
   `(flycheck-warning ((t (:underline (:color ,nimbus-warn :style wave)))))
   `(flycheck-error ((t (:underline (:color ,nimbus-err :style wave)))))
   `(flycheck-fringe-info ((t (:inherit success :bold nil))))
   `(flycheck-fringe-warning ((t (:inherit warning :bold nil))))
   `(flycheck-fringe-error ((t (:inherit error :bold nil))))
   `(flycheck-error-list-info ((t (:foreground ,green))))
   `(flycheck-error-list-checker-name ((t (:foreground ,yellow))))

   `(flymake-note ((t (:underline (:color ,nimbus-success :style wave)))))
   `(flymake-warning ((t (:underline (:color ,nimbus-warn :style wave)))))
   `(flymake-error ((t (:underline (:color ,nimbus-err :style wave)))))

   ;; forge
   `(forge-post-author ((t (:foreground ,name))))
   `(forge-post-date ((t (:foreground ,date))))
   `(forge-topic-closed ((t (:foreground ,gray))))
   `(forge-topic-merged ((t (:foreground ,dark-green))))
   `(forge-topic-open ((t ())))
   `(forge-topic-unmerged ((t (:inherit magit-dimmed))))

   ;; geiser
   `(geiser-font-lock-autodoc-current-arg ((t (:foreground ,current))))
   `(geiser-font-lock-autodoc-identifier ((t (:foreground ,blue))))
   `(geiser-font-lock-doc-link ((t (:foreground ,lighter-green :underline t))))
   `(geiser-font-lock-error-link ((t (:foreground ,lighter-green :underline t))))
   `(geiser-font-lock-xref-link ((t (:foreground ,lighter-green :underline t))))

   ;; git
   `(git-commit-summary ((t (:foreground ,summary))))
   `(git-commit-comment-action ((t (:foreground ,orange))))
   `(git-commit-comment-heading ((t (:foreground ,heading))))

   `(git-rebase-comment-heading ((t (:foreground ,heading))))
   `(git-rebase-description ((t (:foreground ,summary))))

   ;; git-gutter
   `(git-gutter:deleted ((t (:foreground ,red :bold t))))
   `(git-gutter:modified ((t (:foreground ,orange :bold t))))
   `(git-gutter:separator ((t (:foreground ,separator :bold t))))
   `(git-gutter:unchanged ((t (:foreground ,yellow))))

   ;; gnus
   `(gnus-button ((t (:bold t))))
   `(gnus-emphasis-highlight-words ((t (:foreground ,bright-yellow :background ,black))))
   `(gnus-group-mail-1 ((t (:foreground ,purple :bold t))))
   `(gnus-group-mail-1-empty ((t (:foreground ,purple))))
   `(gnus-group-mail-2 ((t (:foreground ,blue :bold t))))
   `(gnus-group-mail-2-empty ((t (:foreground ,blue))))
   `(gnus-group-mail-3 ((t (:foreground ,purple :bold t))))
   `(gnus-group-mail-3-empty ((t (:foreground ,purple))))
   `(gnus-group-mail-low ((t (:foreground ,yellow :bold t))))
   `(gnus-group-mail-low-empty ((t (:foreground ,yellow))))
   `(gnus-group-news-1 ((t (:foreground ,green :bold t))))
   `(gnus-group-news-1-empty ((t (:foreground ,green))))
   `(gnus-group-news-2 ((t (:foreground ,light-green :bold t))))
   `(gnus-group-news-2-empty ((t (:foreground ,light-green))))
   `(gnus-group-news-3 ((t (:bold t))))
   `(gnus-group-news-3-empty ((t (:foreground nil :background nil))))
   `(gnus-group-news-4 ((t (:foreground nil :bold t))))
   `(gnus-group-news-4-empty ((t (:foreground nil :background nil))))
   `(gnus-group-news-5 ((t (:bold t))))
   `(gnus-group-news-5-empty ((t (:foreground nil :background nil))))
   `(gnus-group-news-6 ((t (:bold t))))
   `(gnus-group-news-6-empty ((t (:foreground nil :background nil))))
   `(gnus-group-news-low ((t (:foreground ,lighter-green :bold t))))
   `(gnus-group-news-low-empty ((t (:foreground ,lighter-green))))
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-from ((t (:foreground ,blue))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-header-newsgroups ((t (:inherit message-header-newsgroups))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-server-agent ((t (:foreground ,lighter-blue :bold t))))
   `(gnus-server-closed ((t (:foreground ,light-blue))))
   `(gnus-server-denied ((t (:inherit error))))
   `(gnus-server-offline ((t (:inherit warning))))
   `(gnus-server-opened ((t (:inherit success))))
   `(gnus-signature ((t (:background nil))))
   `(gnus-splash ((t (:foreground "#cccccc"))))
   `(gnus-summary-cancelled ((t (:foreground ,bright-yellow :background ,black))))
   `(gnus-summary-high-ancient ((t (:foreground ,lighter-blue :bold t))))
   `(gnus-summary-high-read ((t (:foreground ,light-green :bold t))))
   `(gnus-summary-high-ticked ((t (:foreground ,pink :bold t))))
   `(gnus-summary-high-undownloaded ((t (:foreground ,fg :bold t))))
   `(gnus-summary-high-unread ((t (:bold t))))
   `(gnus-summary-low-ancient ((t (:foreground ,lighter-blue))))
   `(gnus-summary-low-read ((t (:foreground ,light-green))))
   `(gnus-summary-low-ticked ((t (:foreground ,pink))))
   `(gnus-summary-low-undownloaded ((t (:foreground ,gray))))
   `(gnus-summary-low-unread ((t (:foreground nil :background nil))))
   `(gnus-summary-normal-ancient ((t (:inherit default))))
   `(gnus-summary-normal-read ((t (:foreground ,green))))
   `(gnus-summary-normal-ticked ((t (:foreground ,orange))))
   `(gnus-summary-normal-undownloaded ((t (:foreground ,light-gray))))
   `(gnus-summary-normal-unread ((t (:foreground ,blue))))
   `(gnus-summary-selected ((t (:underline t))))

   `(gnus-cite-1 ((t (:foreground ,rainbow-1))))
   `(gnus-cite-2 ((t (:foreground ,rainbow-2))))
   `(gnus-cite-3 ((t (:foreground ,rainbow-3))))
   `(gnus-cite-4 ((t (:foreground ,rainbow-4))))
   `(gnus-cite-5 ((t (:foreground ,rainbow-5))))
   `(gnus-cite-6 ((t (:foreground ,rainbow-6))))
   `(gnus-cite-7 ((t (:foreground ,rainbow-7))))
   `(gnus-cite-8 ((t (:foreground ,rainbow-8))))
   `(gnus-cite-9 ((t (:foreground ,rainbow-9))))
   `(gnus-cite-10 ((t (:foreground ,rainbow-1))))
   `(gnus-cite-11 ((t (:foreground ,rainbow-2))))
   `(gnus-cite-attribution ((t (:foreground nil :background nil))))

   ;; guide-key
   `(guide-key/prefix-command-face ((t (:foreground ,heading))))
   `(guide-key/highlight-command-face ((t (:foreground ,dark-green))))
   `(guide-key/key-face ((t (:foreground ,key))))

   ;; helm
   `(helm-action ((t (:foreground ,yellow :underline nil))))
   `(helm-bookmark-addressbook ((t (:foreground ,red))))
   `(helm-bookmark-file ((t (:foreground ,light-blue))))
   `(helm-bookmark-gnus ((t (:foreground ,purple))))
   `(helm-bookmark-info ((t (:foreground ,green))))
   `(helm-bookmark-man ((t (:foreground ,orange))))
   `(helm-bookmark-w3m ((t (:foreground ,yellow))))
   `(helm-buffer-archive ((t (:foreground ,archive))))
   `(helm-buffer-directory ((t (:inherit dired-directory))))
   `(helm-buffer-file ((t (:foreground ,file))))
   `(helm-buffer-process ((t (:foreground ,green))))
   `(helm-buffer-size ((t (:foreground ,number))))
   `(helm-candidate-number ((t (:foreground ,dark-green))))
   `(helm-ff-directory ((t (:inherit dired-directory))))
   `(helm-ff-dotted-directory ((t (:inherit dired-directory))))
   `(helm-ff-dotted-symlink-directory ((t (:inherit helm-ff-dotted-directory :slant italic))))
   `(helm-ff-executable ((t (:foreground ,executable))))
   `(helm-ff-file ((t (:foreground ,file))))
   `(helm-ff-file-extension ((t (:foreground ,file-suffix))))
   `(helm-ff-prefix ((t (:foreground ,red))))
   `(helm-ff-socket ((t (:foreground ,purple))))
   `(helm-ff-symlink ((t (:inherit dired-symlink))))
   `(helm-grep-file ((t (:foreground ,file :underline t))))
   `(helm-grep-finish ((t (:foreground ,green))))
   `(helm-grep-lineno ((t (:foreground ,line))))
   `(helm-header ((t (:foreground ,bg :background ,fg))))
   `(helm-locate-finish ((t (:foreground ,green))))
   `(helm-M-x-key ((t (:foreground ,key))))
   `(helm-match-item ((t (:inherit match))))
   `(helm-match ((t (:inherit highlight :foreground ,current))))
   `(helm-moccur-buffer ((t (:inherit compilation-info))))
   `(helm-prefarg ((t (:foreground ,green :bold t))))
   `(helm-selection ((t (:background ,selection))))
   `(helm-source-header ((t (:background ,darkerer-gray))))
   `(helm-visible-mark ((t (:inherit region))))

   ;; helm-swoop
   `(helm-swoop-line-number-face ((t (:foreground ,line))))
   `(helm-swoop-target-word-face ((t (:inherit match))))
   `(helm-swoop-target-line-face ((t (:inherit highlight))))
   `(helm-swoop-target-line-block-face ((t (:inherit helm-swoop-target-line-face :foreground ,white))))

   ;; highlight-indentation
   `(highlight-indentation-current-column-face ((t (:background ,gray))))
   `(highlight-indentation-face ((t (:background ,indent))))

   ;; highlight-indent-guides
   `(highlight-indent-guides-character-face ((t (:foreground ,indent))))
   `(highlight-indent-guides-odd-face ((t (:background ,darkest-gray))))
   `(highlight-indent-guides-even-face ((t (:background ,darker-gray))))

   ;; highlight-numbers
   `(highlight-numbers-number ((t (:foreground ,number))))

   ;; highlight-operators
   `(highlight-operators-face ((t (:foreground ,orange))))

   ;; highlight-quoted
   `(highlight-quoted-symbol ((t (:foreground ,purple))))

   ;; hl-line
   `(hl-line ((t (:background ,hl-line))))

   ;; hl-todo
   `(hl-todo ((t (:foreground ,pink :bold nil :slant italic))))

   ;; ido
   `(flx-highlight-face ((t (:foreground ,light-blue :underline nil :bold t))))
   `(ido-only-match ((t (:foreground ,match))))
   `(ido-first-match ((t (:foreground ,search))))
   `(ido-incomplete-regexp ((t (:foreground ,red))))
   `(ido-subdir ((t (:foreground ,yellow))))

   ;; indent-guide
   `(indent-guide-face ((t (:foreground ,indent))))

   ;; info
   `(Info-quoted ((t (:inherit font-lock-constant-face))))
   `(info-menu-header ((t (:foreground ,light-gray :weight bold :height 1.4))))
   `(info-menu-star ((t (:foreground ,red))))
   `(info-node ((t (:foreground ,light-gray :inherit italic :weight bold))))
   `(info-title-1 ((t (:weight bold :height 1.6))))
   `(info-title-2 ((t (:weight bold :height 1.4))))
   `(info-title-3 ((t (:weight bold :height 1.2))))
   `(info-title-4 ((t (:weight bold :height 1.0))))

   ;; ivy
   `(ivy-confirm-face ((t (:foreground ,green))))
   `(ivy-current-match ((t (:foreground ,white :background ,blue))))
   `(ivy-match-required-face ((t (:foreground ,red))))
   `(ivy-minibuffer-match-face-1 ((t (:foreground ,white :background ,darker-gray))))
   `(ivy-minibuffer-match-face-2 ((t (:foreground ,white :background ,dark-green :weight bold))))
   `(ivy-minibuffer-match-face-3 ((t (:foreground ,white :background ,dark-red :weight bold))))
   `(ivy-minibuffer-match-face-4 ((t (:foreground ,white :background ,yellow :weight bold))))
   `(ivy-modified-buffer ((t (:foreground ,orange))))
   `(ivy-remote ((t (:foreground ,light-blue))))
   `(ivy-subdir ((t (:foreground ,dark-green))))
   `(ivy-virtual ((t (:foreground ,blue))))

   ;; jabber
   `(jabber-activity-face ((t (:inherit font-lock-variable-name-face :bold t))))
   `(jabber-activity-personal-face ((t (:inherit font-lock-function-name-face :bold t))))
   `(jabber-chat-error ((t (:inherit error))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,green :underline nil :bold t))))
   `(jabber-chat-prompt-local ((t (:foreground ,blue :underline nil :bold t))))
   `(jabber-chat-prompt-system ((t (:foreground ,yellow :underline nil :bold t))))
   `(jabber-chat-text-foreign ((t (:inherit default))))
   `(jabber-chat-text-local ((t (:inherit default :bold t))))
   `(jabber-rare-time-face ((t (:foreground ,purple :underline t))))
   `(jabber-roster-user-away ((t (:inherit font-lock-string-face))))
   `(jabber-roster-user-chatty ((t (:foreground ,orange :bold t))))
   `(jabber-roster-user-error ((t (:inherit error))))
   `(jabber-roster-user-offline ((t (:inherit font-lock-comment-face))))
   `(jabber-roster-user-online ((t (:inherit font-lock-keyword-face :bold t))))
   `(jabber-roster-user-xa ((t (:inherit font-lock-doc-face))))

   ;; js2
   `(js2-external-variable ((t (:foreground ,orange))))
   `(js2-function-param ((t (:foreground ,dark-green))))
   `(js2-instance-member ((t (:foreground ,purple))))
   `(js2-jsdoc-html-tag-delimiter ((t (:foreground ,gray))))
   `(js2-jsdoc-html-tag-name ((t (:foreground ,gray))))
   `(js2-jsdoc-tag ((t (:foreground ,tag))))
   `(js2-jsdoc-type ((t (:foreground ,red))))
   `(js2-jsdoc-value ((t (:foreground ,yellow))))
   `(js2-private-function-call ((t (:foreground ,dark-green))))
   `(js2-private-member ((t (:foreground ,dark-tan))))
   `(js2-warning ((t (:underline (:color ,nimbus-warn :style wave)))))

   ;; display-line-numbers
   `(line-number ((t (:inherit default :foreground ,line))))
   `(line-number-current-line ((t (:inherit default :foreground ,line-current))))

   ;; linum-relative
   `(linum-relative-current-face ((t (:inherit line-number-current-line :background ,fringe))))

   ;; lsp-ui
   ;; This face seems to break once I set it.
   `(lsp-ui-doc-background ((t (:background ,light-purple-bg))))
   `(lsp-ui-doc-header ((t (:foreground ,heading))))
   `(lsp-ui-peek-filename ((t (:foreground ,file))))
   `(lsp-ui-peek-footer ((t (:inherit lsp-ui-peek-header))))
   `(lsp-ui-peek-header ((t (:foreground ,diff-markers :background ,diff-markers-bg))))
   `(lsp-ui-peek-line-number ((t (:foreground ,line))))
   `(lsp-ui-peek-highlight ((t (:inherit highlight))))
   `(lsp-ui-peek-selection ((t (:background ,selection))))

   ;; magit
   `(magit-section-heading ((t (:foreground ,heading))))
   `(magit-section-heading-selection ((t (:foreground ,red))))
   `(magit-hash ((t (:foreground ,blue-gray))))
   `(magit-branch-local ((t (:foreground ,orange))))
   `(magit-branch-remote ((t (:foreground ,yellow))))
   `(magit-tag ((t (:foreground ,tag))))
   `(magit-filename ((t (:foreground ,file))))

   `(magit-diff-file-heading ((t (:foreground ,fg))))
   `(magit-diff-added ((t (:foreground ,diff-added))))
   `(magit-diff-removed ((t (:foreground ,diff-removed))))
   `(magit-diffstat-added ((t (:foreground ,diff-added))))
   `(magit-diffstat-removed ((t (:foreground ,diff-removed))))

   `(magit-diff-hunk-heading ((t (:inherit default :background ,dark-teal-bg))))
   `(magit-section-highlight ((t (:background ,hl-line))))
   `(magit-diff-context-highlight ((t (:background ,gray-bg))))
   `(magit-diff-file-heading-highlight ((t (:background ,hl-line :slant normal :underline nil))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,teal-bg))))
   `(magit-diff-added-highlight ((t (:foreground ,diff-added :background ,darkest-gray))))
   `(magit-diff-removed-highlight ((t (:foreground ,diff-removed :background ,darkest-gray))))
   `(magit-diff-file-heading-selection ((t (:foreground ,light-blue :inherit magit-diff-file-heading-highlight))))
   `(magit-diff-hunk-heading-selection ((t (:inherit magit-diff-file-heading-selection))))
   `(magit-diff-lines-heading ((t (:background ,blue :foreground ,bg))))

   `(magit-bisect-bad ((t (:foreground ,red))))
   `(magit-bisect-good ((t (:foreground ,green))))
   `(magit-bisect-skip ((t (:foreground ,orange))))
   `(magit-blame-date ((t (:inherit magit-diff-hunk-heading :foreground ,date))))
   `(magit-blame-hash ((t (:inherit magit-diff-hunk-heading :foreground ,hash))))
   `(magit-blame-heading ((t (:inherit magit-diff-hunk-heading :foreground ,heading))))
   `(magit-blame-name ((t (:inherit magit-diff-hunk-heading :foreground ,name))))
   `(magit-blame-summary ((t (:inherit magit-diff-hunk-heading :foreground ,summary))))
   `(magit-blame-highlight ((t (:inherit magit-diff-hunk-heading :foreground ,fg))))

   `(magit-popup-argument ((t (:foreground ,red))))
   `(magit-popup-heading ((t (:inherit magit-section-heading))))
   `(magit-popup-key ((t (:foreground ,key))))
   `(magit-process-ng ((t (:foreground ,red :bold t))))
   `(magit-process-ok ((t (:foreground ,green))))

   `(magit-reflog-amend ((t (:foreground ,orange))))
   `(magit-reflog-checkout ((t (:foreground ,blue))))
   `(magit-reflog-cherry-pick ((t (:foreground ,green))))
   `(magit-reflog-commit ((t (:foreground ,green))))
   `(magit-reflog-merge ((t (:foreground ,green))))
   `(magit-reflog-other ((t (:foreground ,blue))))
   `(magit-reflog-rebase ((t (:foreground ,orange))))
   `(magit-reflog-remote ((t (:foreground ,blue))))
   `(magit-reflog-reset ((t (:foreground ,red))))

   `(magit-sequence-done ((t (:foreground ,purple))))
   `(magit-sequence-head ((t (:foreground ,blue))))
   `(magit-sequence-part ((t (:foreground ,orange))))
   `(magit-sequence-pick ((t (:foreground ,yellow))))
   `(magit-sequence-stop ((t (:foreground ,green))))

   `(magit-signature-error ((t (:inherit error))))
   `(magit-signature-good ((t (:inherit success))))
   `(magit-signature-revoked ((t (:foreground ,purple))))
   `(magit-signature-untrusted ((t (:foreground ,blue))))

   `(magit-cherry-equivalent ((t (:foreground ,green))))
   `(magit-cherry-unmatched ((t (:foreground ,blue))))

   `(magit-log-author ((t (:foreground ,name :slant normal))))
   `(magit-log-date ((t (:foreground ,date :slant normal))))
   `(magit-log-graph ((t (:foreground ,separator))))

   ;; makey
   `(makey-key-mode-button-face ((t (:inherit font-lock-constant-face))))

   ;; Man
   `(Man-overstrike ((t (:foreground ,blue))))
   `(Man-underline ((t (:foreground ,yellow))))

   ;; markdown
   `(markdown-code-face ((t (:foreground ,code))))
   `(markdown-header-face ((t (:foreground ,heading))))

   ;; message-mode
   `(message-cited-text ((t (:inherit font-lock-comment-face))))
   `(message-header-cc ((t (:foreground ,yellow))))
   `(message-header-name ((t (:foreground ,orange))))
   `(message-header-newsgroups ((t (:foreground ,dark-tan :bold t))))
   `(message-header-other ((t (:foreground ,blue-gray))))
   `(message-header-subject ((t (:foreground ,summary))))
   `(message-header-to ((t (:foreground ,name))))
   `(message-header-xheader ((t (:foreground ,purple))))
   `(message-mml ((t (:foreground ,dark-tan))))
   `(message-separator ((t (:foreground ,brown))))

   ;; minibuffer
   `(minibuffer-prompt ((t (:foreground ,bright-yellow :bold nil))))

   ;; mode-line
   `(mode-line ((t (:foreground ,fg :background ,darkerer-gray))))
   `(mode-line-inactive ((t (:foreground ,light-gray :background ,gray-bg))))

   ;; multiple-cursors
   `(mc/cursor-face ((t (:foreground ,black :background ,dark-green))))
   `(mc/cursor-bar-face ((t (:inherit mc/cursor-face :height 0.1))))

   ;; neo-banner
   `(neo-banner-face ((t (:foreground ,blue :bold t))))
   `(neo-button-face ((t (:foreground nil :background nil))))
   `(neo-dir-link-face ((t (:foreground ,blue))))
   `(neo-expand-btn-face ((t (:foreground ,fg))))
   `(neo-file-link-face ((t (:foreground ,fg))))
   `(neo-header-face ((t (:foreground ,heading))))
   `(neo-root-dir-face ((t (:foreground ,green :bold t))))
   `(neo-vc-added-face ((t (:foreground ,green))))
   `(neo-vc-conflict-face ((t (:foreground ,orange))))
   `(neo-vc-default-face ((t (:foreground ,fg))))
   `(neo-vc-edited-face ((t (:foreground ,yellow))))
   `(neo-vc-ignored-face ((t (:foreground ,ignore))))
   `(neo-vc-missing-face ((t (:foreground ,red))))
   `(neo-vc-needs-merge-face ((t (:foreground ,orange))))
   `(neo-vc-needs-update-face ((t (:underline t))))
   `(neo-vc-removed-face ((t (:foreground ,purple))))
   `(neo-vc-unlocked-changes-face ((t (:foreground ,red :background "Blue"))))
   `(neo-vc-unregistered-face ((t (:foreground nil :background nil))))
   `(neo-vc-up-to-date-face ((t (:foreground ,fg))))

   ;; nlinum
   `(nlinum-current-line ((t (:inherit linum :foreground ,line-current))))

   ;; nswbuff
   `(nswbuff-current-buffer-face ((t (:inherit highlight :underline t))))
   `(nswbuff-separator-face ((t (:foreground ,separator))))
   `(nswbuff-special-buffers-face ((t (:foreground ,special))))

   ;; org
   `(org-agenda-date ((t (:foreground ,date))))
   `(org-agenda-date-today ((t (:inherit org-agenda-date :bold t))))
   `(org-agenda-date-weekend ((t (:inherit org-agenda-date :slant italic))))
   `(org-agenda-done ((t (:foreground ,dark-green))))
   `(org-agenda-structure ((t (:foreground ,heading))))
   `(org-block-begin-line ((t (:inherit org-meta-line :underline ,indent))))
   `(org-block-end-line ((t (:inherit org-meta-line :overline ,indent))))
   `(org-checkbox ((t (:foreground ,dark-tan))))
   `(org-date ((t (:inherit link))))
   `(org-date-selected ((t (:inherit highlight :foreground ,current))))
   `(org-document-info ((t (:foreground ,lighter-green))))
   `(org-document-title ((t (:inherit org-document-info :bold t))))
   `(org-done ((t (:foreground ,dark-green))))
   `(org-drawer ((t (:foreground ,special))))
   `(org-ellipsis ((t (:foreground ,light-gray))))
   `(org-hide ((t (:foreground ,bg))))
   `(org-level-1 ((t (:foreground ,rainbow-1))))
   `(org-level-2 ((t (:foreground ,rainbow-2))))
   `(org-level-3 ((t (:foreground ,rainbow-3))))
   `(org-level-4 ((t (:foreground ,rainbow-4))))
   `(org-level-5 ((t (:foreground ,rainbow-5))))
   `(org-level-6 ((t (:foreground ,rainbow-6))))
   `(org-level-7 ((t (:foreground ,rainbow-7))))
   `(org-level-8 ((t (:foreground ,rainbow-8))))
   `(org-priority ((t (:foreground ,dark-red))))
   `(org-scheduled ((t (:foreground ,green))))
   `(org-scheduled-previously ((t (:foreground ,orange))))
   `(org-scheduled-today ((t (:foreground ,yellow))))
   `(org-special-keyword ((t (:inherit org-drawer))))
   `(org-table ((t (:foreground ,lighter-blue))))
   `(org-tag ((t (:foreground ,tag))))
   `(org-time-grid ((t (:foreground ,blue-gray))))
   `(org-todo ((t (:foreground ,red))))
   `(org-upcoming-deadline ((t (:inherit org-warning :bold nil))))
   `(org-warning ((t (:inherit font-lock-warning-face :foreground ,red))))

   ;; org-recur
   `(org-recur ((t (:foreground ,dark-tan))))

   ;; org-super-agenda
   `(org-super-agenda-header ((t (:inherit font-lock-comment-face))))

   ;; package
   `(package-name ((t (:inherit link))))
   `(package-status-available ((t (:foreground ,green))))
   `(package-description ((t (:foreground ,yellow))))

   ;; paradox
   `(paradox-mode-line-face ((t (:foreground ,blue-bg :bold t))))

   ;; powerline
   `(powerline-active1 ((t (:foreground ,black :background ,darker-green))))
   `(powerline-active2 ((t (:foreground ,gray :background ,fringe))))
   `(powerline-inactive1 ((t (:foreground ,bg :background ,blue-gray))))
   `(powerline-inactive2 ((t (:foreground ,gray :background ,gray-bg))))

   ;; rainbow-blocks
   `(rainbow-blocks-depth-1-face ((t (:foreground ,rainbow-1))))
   `(rainbow-blocks-depth-2-face ((t (:foreground ,rainbow-2))))
   `(rainbow-blocks-depth-3-face ((t (:foreground ,rainbow-3))))
   `(rainbow-blocks-depth-4-face ((t (:foreground ,rainbow-4))))
   `(rainbow-blocks-depth-5-face ((t (:foreground ,rainbow-5))))
   `(rainbow-blocks-depth-6-face ((t (:foreground ,rainbow-6))))
   `(rainbow-blocks-depth-7-face ((t (:foreground ,rainbow-7))))
   `(rainbow-blocks-depth-8-face ((t (:foreground ,rainbow-8))))
   `(rainbow-blocks-depth-9-face ((t (:foreground ,rainbow-9))))
   `(rainbow-blocks-unmatched-face ((t (:inherit error :bold nil))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,rainbow-1))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,rainbow-2))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,rainbow-3))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,rainbow-4))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,rainbow-5))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,rainbow-6))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,rainbow-7))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,rainbow-8))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,rainbow-9))))
   `(rainbow-delimiters-unmatched-face ((t (:inherit error :bold nil))))

   ;; rcirc
   `(rcirc-bright-nick ((t (:foreground ,white))))
   `(rcirc-my-nick ((t (:foreground ,yellow))))
   `(rcirc-nick-in-message ((t (:inherit rcirc-my-nick))))
   `(rcirc-other-nick ((t (:foreground ,blue))))
   `(rcirc-prompt ((t (:foreground ,heading))))
   `(rcirc-server ((t (:foreground ,green))))
   `(rcirc-timestamp ((t (:foreground ,special))))

   ;; re-builder
   `(reb-match-0 ((t (:foreground ,black :background ,red))))
   `(reb-match-1 ((t (:foreground ,black :background ,green))))
   `(reb-match-2 ((t (:foreground ,black :background ,yellow))))
   `(reb-match-3 ((t (:foreground ,black :background ,blue))))

   ;; ruler
   `(ruler-mode-default (()))
   `(ruler-mode-column-number ((t (:foreground ,number))))
   `(ruler-mode-comment-column ((t (:foreground ,red))))
   `(ruler-mode-current-column ((t (:foreground ,current :weight bold))))
   `(ruler-mode-fill-column ((t (:foreground ,red))))
   `(ruler-mode-fringes ((t (:foreground ,green))))
   `(ruler-mode-goal-column ((t (:foreground ,red))))
   `(ruler-mode-margins ((t (:foreground ,white))))
   `(ruler-mode-pad ((t (:foreground ,lighter-green))))
   `(ruler-mode-tab-stop ((t (:foreground ,blue))))

   ;; secondary-selection
   `(secondary-selection ((t (:background ,red-bg))))

   ;; sh
   `(sh-quoted-exec ((t (:foreground ,red))))
   `(sh-heredoc ((t (:inherit font-lock-doc-face))))

   ;; show-paren
   `(show-paren-match ((t (:foreground ,bright-yellow))))
   `(show-paren-mismatch ((t (:inherit error :bold nil))))

   ;; slime
   `(sldb-restartable-frame-line-face ((t (:foreground ,green))))
   `(slime-error-face ((t (:underline (:style wave :color ,red)))))
   `(slime-note-face ((t (:underline (:style wave :color ,blue)))))
   `(slime-repl-inputed-output-face ((t (:foreground ,red))))
   `(slime-style-warning-face ((t (:underline (:style wave :color ,bright-yellow)))))
   `(slime-warning-face ((t (:underline (:style wave :color ,orange)))))

   ;; smerge
   `(smerge-base ((t (:background ,brown))))
   `(smerge-lower ((t (:background ,diff-added-bg))))
   `(smerge-markers ((t (:foreground ,diff-markers :background ,diff-markers-bg))))
   `(smerge-refined-added ((t (:inherit smerge-refined-change :foreground ,diff-added))))
   `(smerge-refined-changed ((t (:background ,diff-changed-bg))))
   `(smerge-refined-removed ((t (:inherit smerge-refined-change :foreground ,diff-removed))))
   `(smerge-upper ((t (:background ,diff-removed-bg))))

   ;; spaceline
   `(spaceline-flycheck-info ((t (:inherit success :bold nil))))
   `(spaceline-flycheck-warning ((t (:inherit warning :bold nil))))
   `(spaceline-flycheck-error ((t (:inherit error :bold nil))))
   `(spaceline-highlight-face ((t (:foreground ,bg :background ,orange))))
   `(spaceline-modified ((t (:foreground ,bg :background ,light-blue))))
   `(spaceline-read-only ((t (:foreground ,bg :background ,purple))))
   `(spaceline-unmodified ((t (:foreground ,bg :background ,orange))))

   ;; term
   `(term-color-black ((t (:foreground ,darkest-gray :background ,darkest-gray))))
   `(term-color-blue ((t (:foreground ,blue :background ,blue))))
   `(term-color-cyan ((t (:foreground ,lighter-blue :background ,lighter-blue))))
   `(term-color-green ((t (:foreground ,green :background ,green))))
   `(term-color-magenta ((t (:foreground ,purple :background ,purple))))
   `(term-color-red ((t (:foreground ,red :background ,red))))
   `(term-color-white ((t (:foreground ,fg :background ,fg))))
   `(term-color-yellow ((t (:foreground ,yellow :background ,yellow))))
   `(term-default-bg-color ((t (:inherit bg))))
   `(term-default-fg-color ((t (:inherit fg))))

   ;; transient
   `(transient-heading ((t (:foreground ,heading))))
   `(transient-key ((t (:foreground ,key))))

   ;; twittering
   `(twittering-timeline-footer-face ((t (:foreground ,heading))))
   `(twittering-timeline-header-face ((t (:foreground ,heading))))
   `(twittering-uri-face ((t (:underline t))))
   `(twittering-username-face ((t (:inherit font-lock-keyword-face :underline t))))

   ;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
   `(undo-tree-visualizer-default-face ((t (:inherit font-lock-comment-face))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,orange))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,current))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,purple))))

   ;; volatile-highlights
   `(vh1/default-face ((t (:inherit secondary-selection))))

   ;; web-mode
   `(web-mode-block-attr-name-face ((t (:foreground ,lighter-green))))
   `(web-mode-block-attr-value-face ((t (:inherit font-lock-string-face))))
   `(web-mode-block-comment-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-block-control-face ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-block-delimiter-face ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-block-face ((t (:background ,fg))))
   `(web-mode-block-string-face ((t (:inherit font-lock-string-face))))
   `(web-mode-builtin-face ((t (:inherit font-lock-builtin-face))))
   `(web-mode-comment-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-comment-keyword-face ((t (:bold t))))
   `(web-mode-constant-face ((t (:foreground ,purple))))
   `(web-mode-css-at-rule-face ((t (:foreground ,purple))))
   `(web-mode-css-color-face ((t (:foreground ,blue))))
   `(web-mode-css-comment-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-css-function-face ((t (:foreground ,blue))))
   `(web-mode-css-priority-face ((t (:foreground ,blue))))
   `(web-mode-css-property-name-face ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-css-pseudo-class-face ((t (:foreground ,blue))))
   `(web-mode-css-selector-face ((t (:foreground ,blue))))
   `(web-mode-css-string-face ((t (:foreground ,yellow))))
   `(web-mode-current-element-highlight-face ((t (:background ,black))))
   `(web-mode-doctype-face ((t (:inherit font-lock-doc-face))))
   `(web-mode-error-face ((t (:inherit error))))
   `(web-mode-folded-face ((t (:underline t))))
   `(web-mode-function-call-face ((t (:inherit font-lock-function-name-face))))
   `(web-mode-function-name-face ((t (:inherit font-lock-function-name-face))))
   `(web-mode-html-attr-custom-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-equal-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-name-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-value-face ((t (:inherit font-lock-string-face))))
   `(web-mode-html-tag-bracket-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-tag-custom-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-tag-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-javascript-comment-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-javascript-string-face ((t (:inherit font-lock-string-face))))
   `(web-mode-json-comment-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-json-context-face ((t (:foreground ,purple))))
   `(web-mode-json-key-face ((t (:foreground ,pink))))
   `(web-mode-json-string-face ((t (:inherit font-lock-string-face))))
   `(web-mode-keyword-face ((t (:inherit font-lock-keyword-face))))
   `(web-mode-param-name-face ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-part-comment-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-part-face ((t (:background ,bg))))
   `(web-mode-part-string-face ((t (:inherit font-lock-string-face))))
   `(web-mode-preprocessor-face ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-string-face ((t (:inherit font-lock-string-face))))
   `(web-mode-symbol-face ((t (:inherit font-lock-constant-face))))
   `(web-mode-type-face ((t (:inherit font-lock-type-face))))
   `(web-mode-variable-name-face ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-warning-face ((t (:inherit font-lock-warning-face))))
   `(web-mode-whitespace-face ((t (:background ,purple))))

   ;; which-func
   ;; `(which-func ((t ())))

   ;; which-key
   `(which-key-key-face ((t (:foreground ,key))))
   `(which-key-note-face ((t (:inherit font-lock-comment-face))))
   `(which-key-docstring-face ((t (:inherit font-lock-doc-face))))
   `(which-key-separator-face ((t (:foreground ,separator))))
   `(which-key-special-key-face ((t (:foreground ,special))))
   `(which-key-group-description-face ((t (:foreground ,heading))))
   `(which-key-highlighted-command-face ((t (:inherit which-key-command-description-face :underline t))))
   `(which-key-command-description-face ((t (:foreground ,dark-green))))
   `(which-key-local-map-description-face ((t (:inherit font-lock-variable-name-face))))

   ;; whitespace
   `(whitespace-empty ((t (:foreground ,gray :background "gray10"))))
   `(whitespace-hspace ((t (:foreground ,gray :background "grey11"))))
   `(whitespace-indentation ((t (:foreground ,gray :background "gray12"))))
   `(whitespace-line ((t (:underline ,nimbus-err :bold nil))))
   `(whitespace-newline ((t (:foreground ,gray))))
   `(whitespace-space ((t (:foreground ,gray))))
   `(whitespace-space-after-tab ((t (:foreground ,gray :background "gray13"))))
   `(whitespace-space-before-tab ((t (:foreground ,gray :background "gray14"))))
   `(whitespace-tab ((t (:foreground ,gray :background "grey15"))))
   `(whitespace-trailing ((t (:foreground ,blue :background ,bg :bold t))))

   ;; widget
   `(widget-field ((t (:foreground ,fg :background ,darkest-gray))))

   ;; w3m
   `(w3m-bold ((t (:foreground ,blue :bold t))))
   `(w3m-current-anchor ((t (:underline t :bold t))))
   `(w3m-italic ((t (:foreground ,orange :underline t))))
   `(w3m-underline ((t (:foreground ,green :underline t))))

   ;; yasnippet
   `(yas-field-highlight-face ((t (:background ,selection))))

   ) ;; end of custom-theme-set-faces

  (custom-theme-set-variables
   'nimbus
   `(ansi-color-names-vector
     [,darker-gray ,red ,green ,yellow ,blue ,purple ,light-blue ,fg])))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun nimbus-theme()
  "Apply 'nimbus-theme'."
  (interactive)
  (load-theme 'nimbus t))

;;; Footer

(provide 'nimbus-theme)

(provide-theme 'nimbus)
;;; nimbus-theme.el ends here
