#lang scribble/manual

@require[@for-label[ts-printing
                    racket/base]]

@title{Deck Printer}

@defmodule[ts-printer]

@defproc[(collection->folder [kc kata-collection?] [dest path?]) voide?]{
  Outputs the katas in the collection into the specified folders.
  
  Cards will be given names like @racket["card-025.png"].  Even numbered
  cards are the fronts, and odds are the back.  Furthermore, fronts will be 
  placed into a subdirectory front/, and backs will be placed into a subdirectory
  back/

  Here is the starting point for doing a print order: 

  @link{https://www.makeplayingcards.com/design/your-own-hex-cards.html}
}

@defproc[(collection->Desktop [kc kata-collection?] [s string?])]{
  Wrapper for @racket[collection->folder].  Assumes you want the
  collection in a folder named @racket[s] on your Desktop.
}

@defparam[FRONT-COLOR color color? #:value "aquamarine"]{
  Color that renders at the base of each card front.
}

@defparam[FRONT-COLOR-FG color color? #:value "palegreen"]{
  Color that renders behind the text on each card front.
}

@defparam[FRONT-TITLE pict pict? #:value (blank)]{
  Renders at the top of the front of each card.
}

@defform[(begin-job desktop-folder (collection [parameter val] ...) ...)]{
  Utility for putting multiple kata collections into the same folder,
  but with different card numbers, foreground colors, etc.

  Here's how you would make a function that turns three sub collections into a print job:

  @codeblock{
        (define (ts-battle-arena-fortnite-summer-camp-2019->Desktop)
          (local-require ts-battle-arena-fortnite-summer-camp-2019/katas)

          (begin-job "ts-battle-arena-fortnite-summer-camp-2019-cards"    
            (avatar-katas
              [FRONT-COLOR    googly-red]
              [FRONT-COLOR-FG clear-white]
              [FRONT-TITLE    (title "(avatar)")]) 
            (selected-enemy-katas
              [FRONT-COLOR    googly-orange]
              [FRONT-COLOR-FG clear-white]
              [FRONT-TITLE    (title "(enemies)")]) 
            (selected-weapon-katas
              [FRONT-COLOR    googly-yellow]
              [FRONT-COLOR-FG clear-white]
              [FRONT-TITLE    (title "(weapons)")]) ))
  } 

  This is the building block used to define the print jobs below.
}

@defmodule[ts-printer/print-jobs]

Some common print jobs, where for each major category of 
katas, it assigns a different front-of-card
color from our @racket[ts-kata-util/colors/pallets] and 
adds a matching title.

@defproc[(ts-battle-arena-asp-2019->Desktop) void?]{ }

@defproc[(ts-battle-arena-fortnite-summer-camp-2019->Desktop) void?]{ }

@defproc[(ts-battle-arena-starwars-summer-camp-2019->Desktop) void?]{ }

@defproc[(ts-survival-asp-2019->Desktop) void?]{ }

@defproc[(ts-survival-minecraft-summer-camp-2019->Desktop) void?]{ }

@defproc[(ts-survival-pokemon-summer-camp-2019->Desktop) void?]{ }

@defproc[(ts-k2-farm-summer-camp-2019->Desktop) void?]{ }
@defproc[(ts-k2-sea-summer-camp-2019->Desktop) void?]{ }
@defproc[(ts-k2-hero-summer-camp-2019->Desktop) void?]{ }
