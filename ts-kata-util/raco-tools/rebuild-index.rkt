#lang racket

(require TS-HomeSite/widgets)

(if (not (file-exists? "./index.rktd"))
   (error "index.rktd file not found.  Are you in the root directory of a collection of kata collections?  (e.g. TS-Kata-Collections/)")
   (void))

(define ns (make-base-namespace))

(define index-data
  (eval (read (open-input-string (file->string "./index.rktd"))) ns ))

(define public-data  (first index-data))
(define private-data (second index-data))

(define (collection-link pkg title)
    (~a "<div><a href=\"" pkg "/doc/manual/index.html\" class=\"btn btn-sm btn-green program_button_sm_txt program_button_blue\" style=\"width: 450px;font-size: 24px;padding: 15px;\">" title "</a><div style=\"clear:both\"></div></div>"))

(with-output-to-file "./index.html" #:exists 'replace
  (thunk
    (displayln
      (render-normal-page #:absolute-links? #t
        "Kata Collections"
        (apply ~a 
          "<h1>Public Collections</h1>"
          (map (curry apply collection-link) public-data)) ))))

(with-output-to-file "./unlisted.html" #:exists 'replace
  (thunk
    (displayln
      (render-normal-page #:absolute-links? #t
        "Kata Collections"
        (apply ~a 
          "<h1>Unlisted Collections</h1>"
          (map (curry apply collection-link) private-data)) ))))

(displayln "Done")
