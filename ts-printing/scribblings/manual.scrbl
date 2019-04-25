#lang scribble/manual

@require[@for-label[racket/base]]

@title{A Package for Our Various Printing Needs}

@defmodule[ts-printing/challenge-cards/print-jobs]

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

@defmodule[ts-printing/k2-identifier-cards/main]

@defform[(begin-k2-identifier-job desktop-folder (collection [parameter val] ...) ...)]{
  Utility for putting multiple k2 lang identifiers into a printable folder.  There are so few identifiers in any one langauge that it makes sense to bundle multiple together into a single deck

  Here's the current implementation of @racket[all->Desktop], which outputs all current k2 lang identifiers.

  @codeblock{
(define (all->Desktop)
  (begin-k2-identifier-job  "k2-langs"  
                         (hero-lang-basic
                           [EXTRA-META (text "k2/lang/hero/basic")]) 
                         (hero-lang-powers
                           [EXTRA-META (text "k2/lang/hero/powers")]) 

                         (zoo-lang-friends
                           [EXTRA-META (text "k2/lang/zoo/friends")])
                         (zoo-lang-coins
                           [EXTRA-META (text "k2/lang/zoo/coins")])
                         (zoo-lang-foods
                           [EXTRA-META (text "k2/lang/zoo/foods")])

                         (sea-lang-friends
                           [EXTRA-META (text "k2/lang/sea/friends")])
                         (sea-lang-enemies
                           [EXTRA-META (text "k2/lang/sea/enemies")])
                         (sea-lang-coins
                           [EXTRA-META (text "k2/lang/sea/coins")])
                         (sea-lang-foods
                           [EXTRA-META (text "k2/lang/sea/foods")])

                         (farm-lang-foods
                           [EXTRA-META (text "k2/lang/farm/foods")])
                         (farm-lang-enemies
                           [EXTRA-META (text "k2/lang/farm/enemies")])
                         (farm-lang-coins
                           [EXTRA-META (text "k2/lang/farm/coins")])))
  } 
}


@defmodule[ts-printing/k2-identifier-cards/print-jobs]

@defproc[(all->Desktop) void?]{}

@defmodule[ts-printing/identifier-cards/main]

@defform[(begin-identifier-job desktop-folder (lang [parameter val] ...) ...)]{
  Takes a list of langs and their printing params and outputs identifiers from those langs into a folder for printing.

  Identifiers are taken from the langauge's example module.  

  Enough duplicates are added so that the deck can be used to construct any single example in the corpus of examples. 

  The cards are sorted in order of frequency of use across a

}

@defmodule[ts-printing/common]

Everything is built upon a common module.

@defproc[(list->folder [card-list (listof pict?)] [dest path?]) void?]{
  Outputs the cards into the specified folders.  Input picts should be a list of
  fronts and backs, alternating.  The output is in a form suitable for 
  uploading to makeplayingcards.com.
  
  Card files will be given names like @racket["card-025.png"].  Even numbered
  cards are the fronts, and odds are the back.  Furthermore, fronts will be 
  placed into a subdirectory front/, and backs will be placed into a subdirectory
  back/

  The outputted images are square and can be used in a variety of templates.

  Here are the templates we've used in the past for challenge chards:

  Medium hext cards (2.6" x 3"):

  @link{https://www.makeplayingcards.com/design/your-own-hex-cards.html}

  Bigger hex cards (3.25" x 3.75"):

  @link{https://www.makeplayingcards.com/design/custom-hexagonal-game-cards.html}

  For identifier and asset cards, the templates are:

  @link{https://www.makeplayingcards.com/design/custom-small-square-cards.html}
}

The above function can be configured through various parameters.

@defparam[FRONT-COLOR color color? #:value "aquamarine"]{
  Color that renders at the base of each card front.
}

@defparam[FRONT-COLOR-FG color color? #:value "palegreen"]{
  Color that renders behind the text on each card front.
}

@defparam[FRONT-TITLE pict pict? #:value (blank)]{
  Renders at the top of the front of each card.
}


