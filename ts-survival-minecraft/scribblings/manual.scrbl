#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          "../katas.rkt"
          "../rendering.rkt"
          ts-kata-util
          (except-in racket read do))

@title{Survival Katas}

These @(~a (length (kata-collection-katas survival-minecraft-katas))) katas pertain to @racket[survival-minecraft].
They can be browsed in various ways using the table of contents below.


@racketblock[
             (require ts-survival-minecraft/katas)
 ]


@table-of-contents[]

@section{Hello World Katas}
@(render hello-world-katas)

@(sections-for kata-section
               hero-katas
               food-katas
               mob-katas
               ore-katas
               crafter-katas
               entity-katas
               biome-katas
               sky-katas)

@section{All Katas}

@(render survival-minecraft-katas)

@(include-section survival-minecraft/scribblings/assets-library)


