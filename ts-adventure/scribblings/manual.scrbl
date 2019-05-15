#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
           "../katas.rkt"
           "../rendering.rkt"
           ts-kata-util
           (except-in racket read do))

@title{Adventure Katas}

These @(~a (length (kata-collection-katas adventure-katas))) katas pertain to @racket[adventure].
They can be browsed in various ways using the table of contents below.

@racketblock[
             (require ts-adventure/katas)
 ]


@table-of-contents[]

@section{Intro Katas}

@(scribblify-collection hello-world-katas)

@(sections-for kata-section
               avatar-katas
               coin-katas
               level-design-katas
               fetch-quest-katas
               enemy-katas
               food-katas
               crafter-katas
               weapon-crafter-katas
               sky-katas
               bg-katas
               npc-katas)
               
@section{All Katas}

@(scribblify-collection adventure-katas)

@(include-section adventure/scribblings/assets-library)
