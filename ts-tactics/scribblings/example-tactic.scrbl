#lang scribble/manual

@(require "../tactics/lang.rkt"
          scribble/core
          scribble/html-properties
          scribble/latex-properties
          racket/runtime-path)

@(define-runtime-path tactics-doc-css-path "./tactics-doc.css")
@(define-runtime-path tactics-doc-tex-path "./tactics-doc.tex")
@(define-runtime-path ts-logo-path "../tactics/base/img/ts-tree.png")

@(define pdf-style
   (make-style "pdf-style"
          (list (css-addition tactics-doc-css-path)
                (tex-addition tactics-doc-tex-path)
                )))

@(define logo-style
   (make-style "LogoStyle"
               '()))

@title[#:style pdf-style]{ThoughtSTEM Language Learning Tactics}

@(centered (image ts-logo-path #:style logo-style))


@section{Example Tactic}

@(require "../tactics/tactic-library/example-tactic.rkt")

@(para (italic "This is an example of a tactic. See comments in example-tactic.rkt for more info."))
@(tactic->scribble
  (my-tactic 'the-tactics-master
             'the-players
             'the-chromebooks
             'the-challenge-cards
             'the-whiteboard
             'the-markers
             'the-timer))