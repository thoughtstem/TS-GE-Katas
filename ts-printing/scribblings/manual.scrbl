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

@defparam[FRONT-MARGIN number number? #:value 200]{
  This controls how close to the edges the foreground of a card is scaled
  on the fronts of cards.
  Anything passed to @racket[front-side] 
  be scaled larger than the @racket[WIDTH] minus the @racket[FRONT-MARGIN].
}

@defparam[BACK-MARGIN number number? #:value 200]{
  Same as the above, but controls @racket[back-side].
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
              [FRONT-BG-COLOR  googly-red]
              [FRONT-FG-COLOR  clear-white]
              [FRONT-TITLE     (title "(avatar)")]) 
            (enemy-katas
              [FRONT-BG-COLOR  googly-orange]
              [FRONT-FG-COLOR  clear-white]
              [FRONT-TITLE     (title "(enemy)")])))
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

@defmodule[ts-printing/identifier-cards/main]

@defform[(begin-identifier-job desktop-folder (lang [parameter val] ...) ...)]{
  Takes a list of langs and their printing params and outputs identifiers from those langs into a folder for printing.

  Identifiers are taken from the langauge's example module.  

  Enough duplicates are added so that the deck can be used to construct any single example in the corpus of examples. 

  The cards are sorted in order of frequency of use across all examples in the corpus.

  Note that the corpus is specified by the @racket[(FILTER-BY-COLLECTION)] -- which both scopes the list of outputted identifiers by whether or not they appear in the corpus (you don't want to get identifiers from all of racket just because your language happens to reprovide racket), and also is used to calculate the frequency.  The @racket[FILTER-BY-COLLECTION] can be any collection of code katas (response is a program) where the programs are written in the langauge @racket[lang].

@codeblock{
(begin-identifier-job "battlearena-avengers"      
                        (battlearena-avengers
                          [FILTER-BY-COLLECTION 
                            (merge-collections   
                              hero-katas     
                              planet-design-katas
                              villain-with-power-katas
                              hero-power-katas                             
                              powerup-katas)]))
}
}

@defform[(begin-identifier-job desktop-folder (lang [parameter val] ...) ...)]{
  Takes a language, uses it as a module path to locate the assets module within that langauge.  Then generates cards for all provided identifiers from there.

  If an identifier doesn't map to an @racket[image?] or @racket[animated-sprite?] it is ignored.  The front of the cards is the identifier.  The backs are images of the assets.
}

@defmodule[ts-printing/identifier-cards/print-jobs]

@defproc[(all->Desktop) void?]{ All of the below }

@defproc[(battlearena-avengers->Desktop) void?]{}
@defproc[(battlearena-fortnite->Desktop) void?]{}
@defproc[(battlearena-starwars->Desktop) void?]{}
@defproc[(survival-minecraft->Desktop) void?]{}
@defproc[(survival-pokemon->Desktop) void?]{}
@defproc[(assets->Desktop) void?]{}

@defmodule[ts-printing/k2-identifier-cards/main]

@defform[(begin-k2-identifier-job desktop-folder (lang [parameter val] ...) ...)]{

  Same as @racket[begin-identifier-job], but the given @racket[lang]s need to be Ratchet languages -- meaning that the module that defines the reader for the @racket[lang] also needs to define a @racket[ratchet] submodule, which provides the @racket[vis-lang] identifier that describes the visual language.

  Note that a useful utility from @racket[ts-kata-util/katas/main] is the @racket[filter-by-response-lang] which takes a lang (symbol) and a collection of katas, and returns a collection of only the katas whose response code language is the given one.  This is useful because at the k2 level we often have kata collections that use a variety of related languages.

  @codeblock{
  (define (farm->Desktop)
          (local-require ts-k2-farm-summer-camp-2019/katas)

          ;Break the farm collection into sub-collections by language.
          (define farm-foods (filter-by-response-lang 'k2/lang/farm/foods farm))
          (define farm-coins (filter-by-response-lang 'k2/lang/farm/coins farm))   
          (define farm-enemies (filter-by-response-lang 'k2/lang/farm/enemies farm))

          (begin-k2-identifier-job  "k2-farm-identifiers"                          
                                    (k2/lang/farm/foods                            
                                      [FILTER-BY-COLLECTION farm-foods])           
                                    (k2/lang/farm/coins                            
                                      [FILTER-BY-COLLECTION farm-coins])           
                                    (k2/lang/farm/enemies
                                      [FILTER-BY-COLLECTION farm-enemies])))
  } 
}


@defmodule[ts-printing/k2-identifier-cards/print-jobs]

@defproc[(all->Desktop) void?]{}
@defproc[(sea->Desktop) void?]{}
@defproc[(zoo->Desktop) void?]{}
@defproc[(farm->Desktop) void?]{}
@defproc[(hero->Desktop) void?]{}

