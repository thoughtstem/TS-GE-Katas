#lang scribble/manual


@(require ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Mario Summer Camp}
@larger[@larger{Coding for Mario Fans}]

@mario-badges

@table-of-contents[]

@section{Intro Katas}
@(render code-of-awesomeness-katas)
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

@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-mario)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section adventure-mario/scribblings/assets-library)