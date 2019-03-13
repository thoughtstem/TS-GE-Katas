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

@section{Hello World Katas}
@(render hello-world-katas)

@(sections-for kata-section
               avatar-katas
               food-katas
               enemy-katas
               coin-katas
               crafter-katas
               weapon-crafter-katas
               sky-katas
               starvation-rate-katas
               bg-katas
               level-design-katas
               npc-katas)

@section{All Katas}

@(render survival-katas)

@(include-section survival/scribblings/assets-library)
      
         
         
         

