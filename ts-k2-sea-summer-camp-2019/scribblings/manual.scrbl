#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventures in Coding Under the Sea: K-2nd}

@k2-sea-badges

@table-of-contents[]

@(sections-for kata-section
               day-one 
               day-two
               day-three
               day-four
               day-five
               )

@section{All Sea Katas}
@(render sea)

@(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/game-jam-resources)
