#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          )

@title{Fleet Camp Spring 2019 -- Day 4}

@larger[@larger{Coding for Minecraft Fans}]  


@table-of-contents[]

@section{Hero Katas}

All teams should start with these katas!

@(render hello-world-katas)
@(render hero-katas)

@section{Food Katas}
@(render food-katas)

@section{Ore Katas}
@(render ore-katas)

@section{Mob Katas}
@(render mob-katas)

@section{Crafter Katas}
@(render crafter-katas)

@(include-section ts-camp-materials/scribblings/full-day-schedule)

@(include-section ts-camp-materials/scribblings/one-day-materials)

@section{Extra Katas}

@subsection{Entity Katas}
@(render entity-katas)

@subsection{Biome Katas}
@(render biome-katas)

@subsection{Sky Katas}
@(render sky-katas)

@subsection{Starvation Rate Katas}
@(render starvation-rate-katas)


@(include-section survival-minecraft/scribblings/assets-library)
