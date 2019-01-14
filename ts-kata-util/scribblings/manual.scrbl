#lang scribble/manual
@require[@for-label[ts-kata-util
                    racket/base]]

@title{ts-kata-util}
@author{thoughtstem}

@defmodule[ts-kata-util]

These are the utilities that help language designers craft a language
that is suitable for building a kata collection on top of it.

The main key is to have lots of examples in the @racket[examples] directory.
Examples are defined with @racket[define-example-code].  See a language like
@racket[battle-arena] to see how the @racket[examples] directory can be
organized.

@defform[(define-example-code lang example-name expr ...)]{
  Formerly @racket[define-racket-code].

  @racket[lang] should be an installable racket package that defines a #lang.  Most of the time
  it will be identical to the package you're defining examples for.  E.g. if you were
  making examples for @racket[battle-arena], you might do something like this:

  @(racketblock
    (define-example-code battle-arena my-example
      (battle-arena-game #:avatar (custom-avatar))))

  @racket[example-name] can be anything, but should be unique across examples.

  Defining an example will 1) create a function called @racket[run:example-name] that will
  run the example, and 2) write out the code for the example into the directory @racket[examples/compiled-example-data/]

  From there, it can be included into a kata collection with @racket[lang->kata-collection].
}


@defproc[(get-example-code [lang symbol?]
                           [example-name symbol?])
         string?]{
  Returns a code string suitable for passing into, say, @racket[pict]'s @racket[codeblock] function.
  Or @racket[scribble]'s @racket[codeblock] function.
}

@defproc[(get-example-names [lang symbol?])
         (listof symbol?)]{
  Returns a list of symbols that correspond to all example names in a collection of examples.
}

To doc or clean up:

(provide 
         
         kata
         side-note
         student-should-translate
         student-should-know-difference-between

         define/contract/doc
         )