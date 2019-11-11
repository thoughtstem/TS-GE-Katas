#lang scribble/manual

@(require ;ts-kata-util/katas/main
          ;ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          )

@title{Survival Minecraft Game}

@minecraft-badges

@table-of-contents[]

@section{Intro Katas}
@(render hello-world-katas)

@section{Skin Katas}
@(render custom-skin-katas)

@section{Food Katas}
@(render food-and-crafter-katas)

@section{Mob & Entity Katas}
@(render mob-and-entity-katas)

@section{Ore & Weapons Katas}
@(render ore-and-weapon-crafter-katas)

@section{Biome & Sky Katas}
@(render biome-and-sky-katas)

@(include-section survival-minecraft/scribblings/assets-library)