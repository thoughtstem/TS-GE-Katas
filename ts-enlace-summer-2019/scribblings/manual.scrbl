#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Data Science}

This training set is for those interested in increasing their data science fluency.  Topics include data manipulation and visualization. 

@table-of-contents[]

@section{Fundamentals}

@(render func-defs)

@section{Data Visualization - Procedural Pictures}

@(render data-sci-pict)

@section{Data Visualization - Basic Data Plotting}

@(render data-sci-plots)


@section{Data Visualization - Basic 2D Histograms}

@(render data-sci-histograms)


@section{Data Visualization - Basic 3D Histograms}

@(render data-sci-3d-histograms)


@section[#:tag "data-manip"]{Data Visualization - Basic Data Manipulation}

@(render data-sci-data)

@section[#:tag "data-stories"]{Data Visualization - Infographics and Data Stories}

@(render data-sci-data-stories)




