#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Welcome to Camp!}

If you're a StarWars fan, you're in the right place.  This camp is
@bold{Coding For StarWars Fans}!

We'll teach you how to channel your love of StarWars into your
coding education.  We'll even teach you how to do it without
making Disney mad.

As part of our series on @bold{Coding For Fans},
we teach students to code by teaching them a 3 step design process:

@itemlist[@item{Learn coding principles and the principles of copyright law and fair use.}
          @item{Use code to create private, derivative works inspired by passion for the StarWars fandom}
          @item{Step by step, convert the work into a transformative work}]

By the end of the camp, students will have created many, many of their very own
video games.  They will also have mastered key concepts in computer science.  They'll
even know a thing or two about copyright law!

That last part sounds boring, but trust us: this camp is insanely awesome.
 
@table-of-contents[]

@section{Philosophy}

[Add more here]

@section{Katas}

@(render katas)
