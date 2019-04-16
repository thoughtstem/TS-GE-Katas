#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventures in Coding and Farm Animals: K-2nd}

@k2-farm-badges

@table-of-contents[]

@(sections-for kata-section
               day-one 
               day-two
               day-three
               day-four
               day-five
               )

@section{All Farm Katas}
@(render farm)

@(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/game-jam-resources)
@;(include-section k2/scribblings/assets-library)
