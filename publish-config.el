;;; publish-config.el --- publish webpage

(require 'ox-publish)

(setq org-publish-project-alist
      '(
        ;; These are the main web files
        ("org-notes"
         :base-directory "~/workspace/notebook"
         :base-extension "org\\|md"
         :publishing-directory "~/workspace/notebook/published"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble nil
         ;;:auto-sitemap t
         ;;:makeindex t
         :sitemap-filename "sitemap.org"
         :sitemap-title "sitemap"
         :section-numbers t ;; nil
         :table-of-contents t
         :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"worg.css\" />"
         :html-head-include-default-style nil)

        ;; These are static files (images, pdf, etc)
        ("org-static"
         :base-directory "~/workspace/notebook"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|txt\\|asc"
         :publishing-directory "~/workspace/notebook/published"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org" :components ("org-notes" "org-static"))
        )
      )


;; fontify code in code blocks
(setq org-src-fontify-natively t)

(defun myweb-publish nil
  "Publish myweb."
  (interactive)
  (org-publish-all nil))                ;; `t` force publish all files

(defun myweb-publish-force nil
  "Publish myweb."
  (interactive)
  (org-publish-all t))                ;; `t` force publish all files

