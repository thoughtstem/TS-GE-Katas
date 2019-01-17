#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{TS Starwars Battle Arena}

These @(~a (length (kata-collection-katas katas))) katas pertain to @racket[battle-arena-starwars].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[
             (require ts-battle-arena-starwars/katas)
 ]


@table-of-contents[]

@section{All Katas}

@(render katas)
