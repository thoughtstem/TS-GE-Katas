#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventure Mario}

These @(~a (length (kata-collection-katas adventure-mario-katas))) katas pertain to @racket[adventure-mario].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[ (require ts-adventure-mario/katas)]


@table-of-contents[]

@section{Intro Katas}
@(render hello-world-katas)

@section{Character Katas}
@(render character-katas)

@section{Coin Katas}
@(render coin-katas)

@section{Level Design Katas}
@(render level-design-katas)

@section{Fetch Quest Katas}
@(render fetch-quest-katas)

@section{Enemy Katas}
@(render enemy-katas)

@(include-section adventure-mario/scribblings/assets-library)