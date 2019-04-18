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

  @link["https://www.makeplayingcards.com/design/your-own-hex-cards.html"]
}


Some common print jobs (implemented with the above):

@defproc[(battle-arena-base->Desktop) void?]{
  Puts the battle-arena base language katas into a folder called "battle-arena-katas"
  on your Desktop.
}

