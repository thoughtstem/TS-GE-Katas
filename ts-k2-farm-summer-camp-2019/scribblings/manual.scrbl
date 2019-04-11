#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{K-2 Farm Animals!}

In this class, students will learn to code video games with their favorite farm animals!

@k2-farm-badges

This page roughly breaks the katas into 5 sections.  Each section roughly corresponds to a day of camp.

@table-of-contents[]

@(sections-for kata-section
               day-one 
               day-two
               day-three
               day-four
               day-five
               )

@section{Katas for Home Practice}
@(render farm)


