#lang scribble/manual


@(require ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Harry Potter Summer Camp}
@larger[@larger{Coding for Harry Potter Fans}]

@harry-potter-badges

@table-of-contents[]

@section{Intro Katas}
@(render code-of-awesomeness-katas)
@(render hello-world-katas)

@section{Wizard Katas}
@(render wizard-katas)

@section{Potion Katas}
@(render potion-katas)

@section{Loot Quest Katas}
@(render loot-quest-katas)

@section{NPC Katas}
@(render npc-katas)

@section{Spell Katas}
@(render spell-katas)


@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-harrypotter)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section adventure-harrypotter/scribblings/assets-library)