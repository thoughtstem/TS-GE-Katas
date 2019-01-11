#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt")

@title{Unnamed Kata Collection}

This is not a Kata Collection.

@image{scribblings/img/pipe.jpg}

This is a web page that displays information that came from a kata
collection.  Neither the web page, nor the Scribble file that created it
are kata collections.

The collection is in @racket[katas.rkt].  If you are editing kata data, do so there
(or in whatever @racket[rkt] files are appropriate).

If you are creating a custom way of displaying a kata collection, THAT's
what you would use Scribble for.  

@table-of-contents[]

@section{Katas}

These katas came from @racket[katas.rkt].
Edit the kata definitions there.

For custom rendering edit @racket[rendering.rkt].

@(scribblify-collection my-katas)
