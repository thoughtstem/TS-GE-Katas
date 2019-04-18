#lang scribble/manual
#
@(require ts-kata-util/badge-maker 2htdp/image)

@require[@for-label[ts-kata-util
                    racket/base]]

@title{Badge Maker}

@defmodule[ts-kata-util/badge-maker]

@defthing[badge-grid pict?]{
  A grid of our current badges collection.  Any triad defined in @racket[ts-kata-util/badge-maker/main] will end up on this grid automatically.

  It's mainly for eyeballing color distributions.

  @badge-grid

}

Here are some tools for creating new badges:

@defproc[(hexagon-triad [i1 pict?] 
                        [i2 pict?] 
                        [i3 pict?] 
                        [c1 color?] 
                        [c2 color?] 
                        [c3 color?]) pict?]{
  Returns a triad of badges, where each badge has one of the given picts, and each color is assigned to either the foreground or background color of the badge.

  
  @codeblock{
    (hexagon-triad potion-icon sword-icon carrot-icon
                   googly-yellow googly-red googly-green)
  }

  @(hexagon-triad potion-icon sword-icon carrot-icon
                  googly-yellow googly-red googly-green)
}

@defproc[(hexagon-badge [i1 pict?] 
                        [c1 color?] 
                        [c2 color?]) pict?]{
  
  @codeblock{
    (hexagon-badge potion-icon
                   googly-yellow googly-red)
  }

  @(hexagon-badge potion-icon
                  googly-yellow googly-red)

}


@(require scribble/extract)

@(include-extracted ts-kata-util/badge-maker/icons/main)
@(include-extracted ts-kata-util/badge-maker/main)


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

@defthing[googly-orange color?]{
  @(circle 10 'solid googly-orange)
}

@defthing[googly-yellow color?]{
  @(circle 10 'solid googly-yellow)
}

@defthing[googly-green color?]{
  @(circle 10 'solid googly-green)
}

@defthing[googly-blue color?]{
  @(circle 10 'solid googly-blue)
}

@defthing[googly-purple color?]{
  @(circle 10 'solid googly-purple)
}




