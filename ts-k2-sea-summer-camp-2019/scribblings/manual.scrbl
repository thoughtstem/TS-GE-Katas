#lang scribble/manual

@(require ;ts-kata-util/katas/main
          ;ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          (prefix-in f: ts-fundamentals/katas)
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventures in Coding Under the Sea: K-2nd}

@k2-sea-badges

@table-of-contents[]

@section{Intro Katas}
@(render f:core-values)
@(render intro-kata)

@section{Food Katas}
@(render food-katas )

@section{Enemy Katas}
@(render enemy-katas)

@section{More Enemy Katas}
@(render more-enemy-katas)

@section{Friend Katas}
@(render friend-katas)

@section{More Friend Katas}
@(render more-friend-katas)

@section{All Sea Katas}
@(render sea)

@(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-k2)
@(include-section ts-camp-materials/scribblings/game-jam-resources)