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



@(include-section adventure/scribblings/assets-library)
