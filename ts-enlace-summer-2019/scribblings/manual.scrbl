#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Data Science}

This training set is for those interested in increasing their data science fluency.  Major topics include data manipulation and visualization. 

Data science is a broad-spectrum field requiring a variety of coding skillsets -- making this an advanced training set.  This set is intended to strengthen recall, recognition, and fluency over a variety of topics:

@itemize{
 @item{@bold{Primitive data.} Strings, numbers, booleans.}
 @item{@bold{Compound data.} Lists.}
 @item{@bold{Data manipulation.} Use of @racket[map] and @racket[apply], as well as other higher-order functions.}
 @item{@bold{Plotting data.} Both interactive and static plots.}
 @item{@bold{Procedurally generated images.} Scaling, rotation, combination of images.  Manipulation of static plots as images.}}

@table-of-contents[]

@section{Coding Fundamentals}

@(render func-defs)

@section{Data Visualization - Procedural Pictures}

@(render data-sci-pict)

@section{Data Visualization - Basic Data Plotting}

@(render data-sci-plots)

@section[#:tag "data-manip-basic"]{Data Manipulation - Basic Tools}

@(render data-sci-data)

@section[#:tag "data-manip-real-sets"]{Data Manipulation - Real Data Sets}

@(render data-sci-real-data)



