#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          )

@title{Fleet Camp Spring 2019 -- Day 4}

@larger[@larger{Coding for Minecraft Fans}]  

This is your resource for your @bold{Coding for Minecraft Fans}
Fleet Spring Camp! Here you can find:

@itemlist[@item{The 5 main kata topics for the day}
          @item{Extra katas}
          @item{Day's schedule with details, hints and reccomendations}
          @item{The list of materials needed to run this camp}
          @item{Assets to use in katas and game jam}]


@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@section{Skin Katas}

These should be every team's first katas of the day.

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
