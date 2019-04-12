#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Farm Animals Summer Camp}

@k2-farm-badges

@table-of-contents[]

@(sections-for kata-section
               day-one 
               day-two
               day-three
               day-four
               day-five
               )

@section{All Katas}
@(render farm)

@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@;(include-section k2/scribblings/assets-library)
