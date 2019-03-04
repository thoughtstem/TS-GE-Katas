#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          "../katas.rkt"
          "../rendering.rkt"
          ts-kata-util
          (except-in racket read do))

@title{Survival Pokemon}

These @(~a (length (kata-collection-katas katas))) katas pertain to @racket[survival-pokemon].
They can be browsed in various ways using the table of contents below.


@racketblock[
             (require ts-survival-pokemon/katas)
 ]


@table-of-contents[]

@(sections-for kata-section
               hello-world-katas
               pokemon-katas
               food-katas
               stone-katas
               trainer-katas
               crafter-katas
               friend-katas
               sky-katas
               town-katas
               starvation-rate-katas)

@(include-section survival-pokemon/scribblings/assets-library)