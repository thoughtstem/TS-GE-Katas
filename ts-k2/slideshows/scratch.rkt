#lang slideshow

(require pict
         racket/runtime-path)

(define-runtime-path here ".")

(define basic-fish  (scale (bitmap (build-path here "scratch/underwater-fish-code.png"))  0.5))
(define basic-diver (scale (bitmap (build-path here "scratch/underwater-diver-code.png")) 0.5))
(define scratch-cards (scale (bitmap (build-path here "scratch/scratch-cards.jpeg")) 0.5))
(define scratch-logo (bitmap (build-path here "scratch/logo.png")))


(slide #:title "Scratch time!"
       scratch-logo
       (t "In a moment, you'll go here:")
       (t "https://bit.ly/2H9ovbh")
       (t "Quick preview..."))

(slide basic-fish)

(slide basic-diver)

(slide 
  (para "For the next 15 minutes, we're going to do a silent exercise.  It's called 'Silent Exploration'.  There are only three rules..."))

(slide #:title "Rule 1 of Silent Exploration" 
       (para "You're allowed to do ANYTHING you want in THIS Scratch project (only)."))

(slide #:title "Rule 2 of Silent Exploration"
       (para "For 15 minutes, I'm not going to tell you what to do.")        )


(slide #:title "Rule 3 of Silent Exploration"
       (para "And for 15 minutes, you're not allowed to ask me for help, or ask questions, or talk!"))
        
(slide 
  (para "Question: Before we start the 'Silent Exploration', why am I having you do this exercise?  Any guesses?"))

(slide 
  (para "Answer: Because I'm not just here to teach you about Scratch.  I'm here to teach you HOW TO LEARN Scratch on your own.  And one of the best ways to do that is to go home and just explore Scratch on your own.  Even when no one is around to help you.  Even if you don't even really know what you're doing."))

(slide 
  (t "Okay, go here:")
  (t "https://bit.ly/2H9ovbh")
  (t "I'll start the timer..."))


(slide #:title "Okay 15 minutes are up!"
  (para "Can anyone share their experience?  Was anyone scared?"))


(slide (para "If you want to keep exploring, you can!") 
       (para "If you want me to give you some challenge cards, press File > New.  And come line up to get your cards")
       scratch-cards)







