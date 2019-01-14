#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt")

@title{Fundamentals}

These are a collection of katas intended to help you improve
your fundamental skills as a programmer.

@bold{Fundamental skills} can be broken down into various types:

@itemlist[@item{@bold{Reading Skills.} Being able to read code and (quickly) determine what it does.}
          @item{@bold{Writing Skills.} Being able to read a high level specification like "Write code that does ___" and (quickly) translate that idea into code.}
          @item{@bold{Refactoring Skills.} Being able to take a program and (quickly) rewrite so that the code is shorter, but it continues to do the same thing.}
          @item{@bold{Debugging Skills.}}
          @item{@bold{Scientific Skills.}}
          @item{@bold{Domain Knowledge?}}
          ]

In general, we recommend that students do a mix of these skills

@section{Writing Skills}

@(scribblify-collection katas)
