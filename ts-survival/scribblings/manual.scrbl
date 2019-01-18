#lang scribble/manual

@(require ts-kata-util/katas/rendering/scribble
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

@section{All Katas}

@(scribblify-collection survival-katas)

@section{Food}

@(scribblify-collection food-katas)

@section{Coin}

@(scribblify-collection coin-katas)

@section{Enemy}

@(scribblify-collection enemy-katas)

@section{Crafter}

@(scribblify-collection crafter-katas)

@section{Day Night}

@(scribblify-collection day-night-katas)


