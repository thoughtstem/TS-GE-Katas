#lang scribble/manual

@require[@for-label[racket/base]]

@title{A Package for Our Various Printing Needs}

@defmodule[ts-printing/common]

This module provides three functions: one for constructing
the front side of a card, one for the back, and one for writing
a list of cards out to a folder.  

It also provides a variety of parameters to configure the above --
e.g. to specify background colors, meta data, card numbering, etc.


@defproc[(list->folder [card-list (listof pict?)] [folder-name string? "my-cards"] [dest path? DESKTOP]) void?]{

  Outputs the cards into the specified folder name in the specified destination.  

  Input picts should be a list of
  fronts and backs, alternating.  The output is in a form suitable for 
  uploading to makeplayingcards.com.

  For ideal results, all of the picts in the input list should have been passed through either @racket[front-side] or @racket[back-side].  If not, there are some parameters in this module that will have no effect (i.e. ones that control the background color of some card). 
  
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

@defproc[(blank-bg) pict?]{ 
  Returns a blank pict determined by the size of the @racket[WIDTH] and @racket[HEIGHT] parameters.
}

The above functions can be configured through various parameters.

@defparam[WIDTH number number? #:value 1200]{
  The total card width is this value plus the @racket[PADDING] value.
}

@defparam[HEIGHT number number? #:value 1200]{
  The total card height is this value plus the @racket[PADDING] value.
}

@defparam[MARGIN number number? #:value 200]{
  This controls how close to the edges the foreground of a card is scaled. 
  Anything passed to @racket[front-side] or @racket[back-side] will not
  be scaled larger than the @racket[WIDTH] minus the @racket[MARGIN].
}

@defparam[PADDING number number? #:value 10]{
  This is used to create a bleed area for cutting.
}


@defparam[FRONT-BG-COLOR color color? #:value "white"]{
  The bagkround color for card fronts
}

@defparam[BACK-BG-COLOR color color? #:value "white"]{
  The bagkround color for card backs
}

@defparam[FRONT-META-FUNCTION procedure (-> number? pict?) #:value default-meta]{
  Can be used to add meta data to the front of cards.  By default adds just the card number and the @racket[VERSION] parameter.

  (Meta data is currently placed in the bottom center of a card.  If you wanted to configure that, you would need to add another parameter to common/main.rkt and update the placement algorithm accordingly.)
}

@defparam[BACK-META-FUNCTION procedure (-> number? pict?) #:value (thunk* (blank))]{
  Can be used to add meta data to the front of cards.  Does nothing by default. 

  (Meta data is currently placed in the bottom center of a card.  If you wanted to configure that, you would need to add another parameter to common/main.rkt and update the placement algorithm accordingly.)
}

@defparam[TOTAL number number? #:value 0]{
  The total number of cards in the deck.  You usually won't set this yourself.  It gets set in the various @racket[begin-job] functions, where the total is calculated as all of the cards printed within that job.
}

@defparam[VERSION string string? #:value ""]{
  The version of the deck.  This defaults to the current checksum of TS-Kata-Collections.
}

@defparam[STARTING-CARD-NUMBER number number? #:value 0]{
  Will number the cards starting at the given value.  Usually, you won't do this by hand.  It can be used when outputing multiple decks to the same folder -- starting the numbering of each subsequent deck where the first left off.  This is done for you in macros like @racket[begin-job].
}


@defmodule[ts-printing/challenge-cards/print-jobs]

Adds some printing parameters that are specific to challenge cards:

@defparam[FRONT-FG-COLOR color color? #:value "white"]{
  The front of a challenge card contains the textual prompt for the challenge.  This color appears behind the text.  
}

@defparam[FRONT-TITLE pict pict? #:value (blank)]{
  This is displayed at the top of the front of each card.
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

