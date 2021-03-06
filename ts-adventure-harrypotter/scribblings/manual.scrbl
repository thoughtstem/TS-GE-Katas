#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventure Harry Potter}

These @(~a (length (kata-collection-katas adventure-harrypotter-katas))) katas pertain to @racket[adventure-harrypotter].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[ (require ts-adventure-harrypotter/katas)]


@table-of-contents[]

@section{Intro Katas}
@(render hello-world-katas)

@section{Wizard Katas}
@(render wizard-katas)

@section{Potion Katas}
@(render potion-katas)

@section{Loot Quest Katas}
@(render loot-quest-katas)

@section{NPC Katas}
@(render npc-katas)

@section{Spell Katas}
@(render spell-katas)

@(include-section adventure-harrypotter/scribblings/assets-library)