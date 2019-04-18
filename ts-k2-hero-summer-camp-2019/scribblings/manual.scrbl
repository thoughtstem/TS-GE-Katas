#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventures in Coding and Superheroes: K-2nd}

@k2-superhero2-badges

@table-of-contents[]

@(sections-for kata-section
               day-one 
               day-two
               day-three
               day-four
               day-five
               )

@section{All Hero Katas}
@(render hero)

@(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/game-jam-resources)
@;(include-section k2/scribblings/assets-library)


