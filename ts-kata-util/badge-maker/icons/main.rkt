#lang racket

;Provides pngs in ./images as an identifier

(require "./image-dir-loader.rkt"
         racket/runtime-path
         pict)

(define-runtime-path images "images")
(define (local-bitmap s)
  (bitmap (~a (path->string images) "/" s)))

(def-icons "./images" local-bitmap)
