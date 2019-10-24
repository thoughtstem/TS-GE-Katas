#lang racket

(provide tips)

(require scribble/manual)

(define tips
  (list

   'data-sci-plots-000
   (list "Use " (code "#:x-label") " and " (code "#:y-label") " to edit the labels for "
         "those axes. For additional keywords, see " (hyperlink "https://docs.racket-lang.org/plot/plotting.html#%28def._%28%28lib._plot%2Fmain..rkt%29._plot%29%29"
                                                                "the documentation for the plot function."))
   
))