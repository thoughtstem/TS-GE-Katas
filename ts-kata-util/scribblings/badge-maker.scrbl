#lang scribble/manual
#
@(require ts-kata-util/badge-maker 2htdp/image)

@require[@for-label[ts-kata-util
                    racket/base]]

@title{Badge Maker}

@defmodule[ts-kata-util/badge-maker]


@defproc[(hexagon-triad [i1 pict?] 
                        [i2 pict?] 
                        [i3 pict?] 
                        [c1 color?] 
                        [c2 color?] 
                        [c3 color?]) pict?]{
  Returns a triad of badges, where each badge has one of the given picts, and each color is assigned to either the foreground or background color of the badge.

  
  @codeblock{
    (hexagon-triad potion sword carrot
                   googly-yellow googly-red googly-green)
  }

  @(hexagon-triad potion sword carrot
                  googly-yellow googly-red googly-green)
}

@defproc[(hexagon-badge [i1 pict?] 
                        [c1 color?] 
                        [c2 color?]) pict?]{
  
  @codeblock{
    (hexagon-badge potion 
                   googly-yellow googly-red)
  }

  @(hexagon-badge potion 
                  googly-yellow googly-red)

}


@(require scribble/extract)

@(include-extracted ts-kata-util/badge-maker/icons/main)

@defthing[adventure-badges pict?]{ @adventure-badges}
@defthing[survival-badges pict?]{ @survival-badges }
@defthing[battlearena-badges pict?]{ @battlearena-badges}

@defthing[k2-farm-badges pict?]{ @k2-farm-badges }
@defthing[k2-sea-badges pict?]{@k2-sea-badges}
@defthing[k2-superhero-badges pict?]{ @k2-superhero-badges}
@defthing[k2-zoo-badges pict?]{ @k2-zoo-badges }

@defthing[avengers-badges pict?]{ @avengers-badges }
@defthing[fortnite-badges pict?]{ @fortnite-badges }
@defthing[starwars-badges pict?]{ @starwars-badges }

@;defthing[harrypotter-badges pict?]{ @harrypotter-badges }
@;defthing[lotr-badges pict?]{ @lotr-badges }
@;defthing[mario-badges pict?]{ @mario-badges }

@section{Colors}

@defthing[bright-red color?]{
  @(circle 10 'solid bright-red)
}

@defthing[bright-orange color?]{
  @(circle 10 'solid bright-orange)
}

@defthing[bright-yellow color?]{
  @(circle 10 'solid bright-yellow)
}

@defthing[bright-green color?]{
  @(circle 10 'solid bright-green)
}

@defthing[bright-blue color?]{
  @(circle 10 'solid bright-blue)
}

@defthing[bright-purple color?]{
  @(circle 10 'solid bright-purple)
}



@defthing[googly-red color?]{
  @(circle 10 'solid googly-red)
}

@defthing[googly-yellow color?]{
  @(circle 10 'solid googly-yellow)
}

@defthing[googly-blue color?]{
  @(circle 10 'solid googly-blue)
}

@defthing[googly-green color?]{
  @(circle 10 'solid googly-green)
}




