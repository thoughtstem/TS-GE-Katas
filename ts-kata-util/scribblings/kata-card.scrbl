#lang scribble/manual

@(require ts-kata-util/kata-card/main
          2htdp/image)

@require[@for-label[ts-kata-util
                    racket/base]]

@title{Kata Cards}
@defmodule[ts-kata-util/kata-card]

These are the functions for building kata cards and how to customize them!

@defproc[(kata-card [#:icon         icon      (or/c image? #f)  default-icon]
                    [#:pastel?      pastel?   boolean?          #f]
                    [#:camera?      camera?   boolean?          #f]
                    [#:logo         logo      (or/c image? #f)  ts-logo]
                    [#:card-height  height    positive?         430]
                    [#:card-width   width     positive?         620]
                    [#:border-color b-color   (or/c #f string? (is-a?/c color%)) (make-object color% 20 170 0)]
                    [#:border-width b-width   real?             7.5]
                    [#:bg-color     bg-color  (or/c #f string? (is-a?/c color%)) 'white]
                    [#:text-option  text      (or/c 'thoughtstem 'thoughtstem-kata-card
                                                    'metacoders 'metacoders-kata-card
                                                    'kata-card #f) 'metacoders-kata-card])
         pict?]{
 Creates a single kata card. If you run the default card...

 @codeblock{(kata-card)}

 ...you will get a card like this:

 @(kata-card)

 But if you wish to customize the card, there are many options:

 @racket[#:icon] takes an image (not a pict, as of now) of any size and color,
 and makes them into the rainbow icons lining the card. The image passed in should
 have a transparent background. Passing in false will return a card with no icons.

 @racket[#:pastel?] will generate a pastel rainbow of icons.

 @racket[#:camera?] adds the camera logo to the bottom left corner.

 @racket[#:logo] takes an image (not a pict, as of now) and places a faded, cropped
 and resized version as a watermark. Exact location and fade level
 are all hard coded, as of now. Passing in false will return a card with no watermark.

 The @racket[#:text-option] takes in one of several symbols and outputs an image with
 that text on the right side of the card. The options as of the last update are:
 
 @codeblock{
 'metacoders
 'metacoders-kata-card
 'thoughtstem
 'thoughtstem-kata-card
 'kata-card
 #f}

 @racketblock[
 (define example-img
   (bitmap "img/example-img.png"))
              
 (kata-card #:icon    example-img
            #:pastel? #t
            #:camera? #f
            #:logo    example-img
            #:text-option 'kata-card)]

 @(kata-card #:icon    (bitmap "img/example-img.png")
             #:pastel? #t
             #:camera? #f
             #:logo    (bitmap "img/example-img.png")
             #:text-option 'kata-card)

 @racket[#:card-height] and @racket[#:card-width] change the size of the outlined
 background. @bold{NOTE}: as of now, the locations of the icons, camera icon, logo, text
 are all hard coded and will not adjust when you change the card size.

 @racket[#:border-color] and @racket[#:border-width] take in a string or color% object 
 and a number, respectively, and adjust the outline surrounding the card.
 @bold{NOTE}: increasing the width of the border significantly will start to increase the size
 of the entire card.

 @racket[#:bg-color] takes in a string or color% object.

 @racketblock[
 (kata-card #:card-height 350
            #:card-width  350
            #:border-width 20
            #:border-color "purple"
            #:bg-color "blue"
            #:icon #f
            #:text-option #f
            #:camera? #f)]

 @(kata-card #:card-height 350
             #:card-width  350
             #:border-width 20
             #:border-color "purple"
             #:bg-color "blue"
             #:icon #f
             #:text-option #f
             #:camera? #f)

}

@defproc[(printable-kata-cards [#:icon         icon      (or/c image? #f)  default-icon]
                               [#:pastel?      pastel?   boolean?          #f]
                               [#:camera?      camera?   boolean?          #f]
                               [#:logo         logo      (or/c image? #f)  ts-logo]
                               [#:card-height  height    positive?         430]
                               [#:card-width   width     positive?         620]
                               [#:border-color b-color   (or/c #f string? (is-a?/c color%)) (make-object color% 20 170 0)]
                               [#:border-width b-width   real?             7.5]
                               [#:bg-color     bg-color  (or/c #f string? (is-a?/c color%)) 'white]
                               [#:text-option  text      (or/c 'thoughtstem 'thoughtstem-kata-card
                                                               'metacoders 'metacoders-kata-card
                                                               'kata-card #f) 'metacoders-kata-card])
         pict?]{
 Has all the same options as @racket[kata-card]. Creates a 3x3 image of the kata cards,
 perfect for printing (when set at their default size)ß.
}
                