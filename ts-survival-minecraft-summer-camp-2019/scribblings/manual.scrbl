#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          )

@title{Minecraft Summer Camp}
@larger[@larger{Coding for Minecraft Fans}]  

@minecraft-badges

@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@section{Skin Katas}
@(render custom-skin-katas)

@section{Food Katas}
@(render food-katas)

@section{Ore Katas}
@(render ore-katas)

@section{Mob Katas}
@(render mob-katas)

@section{Crafter Katas}
@(render crafter-katas)

@section{Extra Katas}
@(render entity-katas)
@(render biome-katas)
@(render sky-katas)

@(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section survival-minecraft/scribblings/assets-library)