;;; html2org-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "html2org" "html2org.el" (23481 41992 849797
;;;;;;  905000))
;;; Generated autoloads from html2org.el

(autoload 'html2org "html2org" "\
Convert HTML to org text in the BUF between START and END.

If REPLACE is nil, it just return the converted org content
 without change the buffer;
Otherwise, it replace the orgin content with converted org content.
When called interactively, it means do the replacement.

\(fn &optional BUF START END REPLACE)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; html2org-autoloads.el ends here
