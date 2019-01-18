#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          "../katas.rkt"
          "../rendering.rkt"
          ts-kata-util
          (except-in racket read do))

@title{Survival Katas}

These @(~a (length (kata-collection-katas survival-katas))) katas pertain to @racket[survival].
They can be browsed in various ways using the table of contents below.


@racketblock[
             (require ts-survival/katas)
 ]


@table-of-contents[]

@(sections-for kata-section
               avatar-katas
               food-katas
               enemy-katas
               coin-katas
               crafter-katas
               day-night-katas)

@section{All Katas}

@(render survival-katas)


