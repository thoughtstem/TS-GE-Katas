#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventures in Coding and Zoo Animals: K-2nd}

@k2-farm-badges

@table-of-contents[]

@section{Food Katas}
@(render day-one)

@section{Coin Katas}
@(render day-two)

@section{More Coin Katas}
@(render day-three)

@section{Friend Katas}
@(render day-four)

@section{More Friend Katas}
@(render day-five)

@section{All Zoo Katas}
@(render zoo)

@(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/game-jam-resources)
@;(include-section k2/scribblings/assets-library)
