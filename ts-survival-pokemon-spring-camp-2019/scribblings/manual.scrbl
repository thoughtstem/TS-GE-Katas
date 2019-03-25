 #lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day 1}
@larger[@larger{Coding for Pokemon Fans}]

This is your resource for your @bold{Coding for Pokemon Fans}
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

@section{Pokemon Katas}
@(render pokemon-katas)

@section{Food Katas}
@(render food-katas)

@section{Trainer Katas}
@(render trainer-katas)

@section{Crafter Katas}
@(render custom-crafter-katas)

@section{Friend Katas}
@(render friend-katas)

@(include-section ts-camp-materials/scribblings/full-day-schedule)
@(include-section ts-camp-materials/scribblings/one-day-materials)


@section{Extra Katas}
@(render stone-katas)
@(render sky-katas)
@(render level-design-katas)
@(render town-katas)

@(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section survival-pokemon/scribblings/assets-library)
