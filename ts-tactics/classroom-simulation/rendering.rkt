#lang racket

(provide render-room)

;TODO: Big picture: estimate costs from 
; list of location data, topic data, course date data, enrollment data, 
; [CURRIC TEAM DIVIDE], (educational runtime =>)
; tactic data, curriculum decisions.

;How to go from the things we want to keep iterating on (languages and tactics) 
;  to the things we don't want to bother with figuring out: equipment lists, costs, printing, work orders, teacher training, etc.

(require "./base.rkt"
         pict)

(define/contract (render-room r)
  (-> room? pict?)

  (frame #:line-width 2
    (inset 
           (vr-append 10
                      (render-materials (room-materials r))  
                      (render-groups (room-groups r)))
           10
           )))

(define (render-materials ms)
  (rectangle 50 20))

(define (render-groups gs)
  (define tables (map render-group gs))  

  (apply hc-append 10 tables))

(define (render-group g)
  ;TODO: Render teachers / students radially

  (apply
    wheel-arrange
    (render-table g)
    (render-teacher (group-teacher g))
    (map render-student (group-students g)) ))

(define (wheel-arrange center . spokes)
  (define s (/ (pict-height center) 2))

  (define angle 
    (/ (* 2 pi) (length spokes)))

  (define adj (/ pi 2))

  (define (spoke-coord n)
    (list
      (cos (+ adj (* n angle)))  
      (sin (+ adj (* n angle)))))

  (define coords 
    (map spoke-coord (range (length spokes))))

  (foldl
    (lambda (coord spoke current)
      (center-pin spoke 
                  (* s (first coord)) 
                  (* s (second coord)) 
                  current)) 
    center
    coords
    spokes) )

(define (center-pin f x y c)
  (pin-under 
    c
    (+ x 
       (/ (pict-width c) 2)
       (- (/ (pict-width f) 2))) 
    (+ (- y)
       (/ (pict-height c) 2)
       (- (/ (pict-height f) 2))) 
    f))

(define (render-table g)
  (disk 20 
        #:border-width 2
        #:border-color (language->color (group-language g))
        #:color  (if (active-group? g)
                   "black"
                   "gray")))


(define (render-student s)
  (filled-ellipse 5 5))

(define (render-teacher s)
  (filled-rectangle 5 5))


(define colors
  (list "red" "orange" "yellow" "green" "blue" "purple" "magenta" "teal"  "cyan"))

(define (next-color)
  (define ret (first colors))
  (set! colors (rest colors))
  ret)

(define color-mappings
  (hash))

(define (language->color l)
  (when (not (hash-has-key? color-mappings l))
    (set! color-mappings
      (hash-set color-mappings l (next-color))))

  (hash-ref color-mappings l) )










