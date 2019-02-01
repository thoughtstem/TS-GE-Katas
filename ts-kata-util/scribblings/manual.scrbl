#lang scribble/manual
@require[@for-label[ts-kata-util
                    racket/base]]

@title{ts-kata-util}
@author{thoughtstem}

@defmodule[ts-kata-util]

These are the utilities that help language designers craft a language
that is suitable for building a kata collection on top of.

The key is to have lots of examples in the @racket[examples] directory.
Examples are defined with @racket[define-example-code].  See a language like
@racket[battle-arena] to see how the @racket[examples] directory can be
organized.

@defform[(define-example-code lang example-name expr ...)]{
  Formerly @racket[define-racket-code].

  @racket[lang] should be an installable racket package that defines a #lang.  Most of the time
  it will be identical to the package you're defining examples for.  E.g. if you were
  making examples for @racket[battle-arena], you might do something like this:

  @(racketblock
    (define-example-code battle-arena my-example
      (battle-arena-game #:avatar (custom-avatar))))

  @racket[example-name] can be anything, but should be unique across examples.

  Defining an example will 1) create a function called @racket[run:example-name] that will
  run the example, and 2) write out the code for the example into the directory @racket[examples/compiled-example-data/]

  From there, it can be included into a kata collection with @racket[lang->kata-collection].
}

@defproc[(get-example-code [lang symbol?]
                           [example-name symbol?])
         string?]{
  Returns a code string suitable for passing into, say, @racket[pict]'s @racket[codeblock] function.
  Or @racket[scribble]'s @racket[codeblock] function.
}

@defproc[(get-example-names [lang symbol?])
         (listof symbol?)]{
  Returns a list of symbols that correspond to all example names in a collection of examples.
}

@defform[(define/contract/doc header contract doc body-expr ...)]{
  Basically the same as @racket[define/contract] except that it also lets you specify
  documentation which will get automatically placed into the scribble docs for a language.

  You'll need to do some setup before this will work.  See langs @racket[survival] or @racket[battle-arena].
  A few things:  Make the language "#lang at-exp racket" so that your docs can be written using @"@"-expressions.
  In @racket[main.rkt] provide the extracted documentation.  In your @racket[manual.scribl] file, require
  the docs and display them.

  Once that's all done, though, you can simply add @racket[define/contract/doc] wherever you want.

  Known limitations: Currently, the @racket[define/contract/doc] macro only supports the @racket[->i]
  style of contracts.  
}

@defmodule[ts-kata-util/katas/main]

This tools are for designers of katas and kata collections.

@section{Data Structures}

@defstruct[kata ([id symbol?]
                 [stimulus stimulus?]
                 [response response?]
                 [tests (listof struct?)])]{
  A kata is a stimulus and a response, and some (optional) tests for how a
  student should generate the response after receiving the stimulus.

  Although you can construct a kata by hand, building its stimulus, response,
  tests, etc., it is more customary to use the kata construction tools.  See below
}

@defstruct[response ([data any/c])]{
  A structure containing data that is intended to be produced as a kata response.

  There are currently three subtypes of responses:

  @itemlist[@item{code}
            @item{say}
            @item{do}]
}

@defstruct[stimulus ([data any/c])]{
  A structure containing data that is intended to be given as a kata stimulus.

  There are currently three subtypes of stimuli:

  @itemlist[@item{hear}
            @item{read}]
}

@defstruct[kata-collection ([katas (listof kata?)])]{
  A wrapper around a list of katas.                                                    
}

@defstruct[expression ([lang symbol?] [data any/c])]{
  Anything whose @racket[data] makes sense in some language @racket[lang].

  Examples:

  @racketblock[
               (expression 'English "How do you code a circle?")
               ]

  @racketblock[
               (expression 'racket "(+ 2 2)")
               ]

}

@section{Kata Construction Tools}

These are tools for building katas of various kinds.  Note that many katas
begin their life as an example in some language.  For that workflow, see
the section Lifting Language Examples to Katas.

However, it is also common to create new katas with the tools in this section.
This is especially true for unplugged katas, meta katas, teaching katas, and other non-coding katas.

@defproc[(make-kata [stim  stimulus?]
                    [resp  response?]
                    [tests (listof any/c) '()])
         kata?]{
  A low(ish)-level tool for building katas if you already have constructed a stimulus
  and response.

  You can construct stimulus and response structs with various convenience functions,
  @racket[read],  @racket[say],  @racket[do].  (See below.)

  However, it can often be easier to use a function that returns an entire kata,
  e.g. @racket[recite], @racket[translate], @racket[coach], etc.

  Neither way is more correct.  Just use the tools that make your job easiest.
}

@defproc[(read [data any/c]
               [#:lang lang symbol? 'English])
         stimulus?]{

 Convenience function for returning a reading stimulus.

 Assumed language is English (for now).
}

@defproc[(say [d any/c])
         response?]{
 Convenience function for returning a say response.
}

@defproc[(do [d any/c])
         response?]{
  Convenience function for returning a do response.
}

@defproc[(set-id [id symbol?]
                 [k kata?])
         kata?]{
  Sets the kata's id, returns a new kata.
}


@defproc[(within [#:minutes minutes number? #f]
                 [#:seconds seconds number? #f]
                 [k kata?])
         kata?]{
  Adds a timed test to kata @racket[k].  Supply either @racket[#:minutes] or
  @racket[#:seconds] but not both.
}

@defproc[(recite [#:in in any/c]
                 [#:out out any/c])
         kata?]{
  Returns a kata with a @racket[hear] stimulus and a @racket[say] response.

  Respectively the @racket[in] is used as the data for the stimulus, and
  @racket[out] is used as the data for the response.

  Example, the core values kata is defined with:

  @racketblock[
               (recite #:in "What are our core values?"
                       #:out (list "It's not about my code; it's about what I can code!"
                                   "It's not about me; it's about my team."))
  ]
}

@defproc[(translate [#:id id symbol? 'TODO-id]
                    [#:in p any/c]
                    [#:in-lang from-lang symbol? 'English]
                    [#:out          c any/c]
                    [#:out-lang in-lang symbol? 'racket])
         kata?]{
 Returns a kata with a @racket[read] stimulus and a @racket[code] response.

 Respectively the @racket[in] is used as the data for the stimulus, and
 @racket[out] is used as the data for the response.  The lang keywords can
 control the language tag attached to the data.

 This function is used for common coding katas:

 @racketblock[
 (translate #:in "How do you calculate 2 plus 2 in Racket?"
            #:out '(+ 2 2))
 ]
}

@defproc[(coach [k kata?]
                [#:with-materials materials (listof any/c) '()])
         kata?]{
 Meta alert!

 This takes a kata and returns a kata.  Useful for creating katas for teachers.

 Example: 
 
 @racketblock[
 (coach core-values
        #:with-materials
        '(whiteboard))
 ]
}

@defproc[(kata-id->kata-name [id symbol?])
         string?]{
  Converts a kata id to a human readable string.
}


@section{Lifting Language Examples to Katas}

@defproc[(example->kata [lang symbol?]
                        [example-id symbol?])
         kata?]{
  Returns a kata where the response is the example's code and the stimulus is
  unspecified.  This is not yet suitable for use in classrooms.  The stimulus
  must be set.
}

@defproc[(lang->kata-collection [lang symbol?])
         kata-collection?]{
  Returns a kata collection where each example in the given @racket[lang] has been
  converted to a kata where the response is the example code and the stimulus is
  unspecified.  Basically it maps @racket[example->kata] over all the examples defined
  by the langauge.

  A typical workflow might use this function, followed by @racket[fill-in-stimuli].
}

@defproc[(fill-in-stimuli [collection kata-collection?]
                          [fill-ins (or/c symbol? stimulus?)]
                          ...
                          )
         kata-collection?]{
  @racket[fill-ins] should be an alternating sequence of example ids and stimuli.
  For each provided id, that kata in @racket[collection] is given the stimuli that
  follows the id.
}


@section{Working with Kata Collections}

@defmodule[ts-kata-util/katas/main]

@defproc[(merge-collections [a (or/c kata? kata-collection?)]
                            [b (or/c kata? kata-collection?)]
                            ...)
         kata-collection?]{
  Merges a bunch of katas or collections into a single collection.
}

@defproc[(filter-collection [predicate? prcedure?]
                            [collection kata-collection?])
         kata-collection?]{
  Returns a kata collection whose katas have been filtered by @racket[predicate?].
}

@defproc[(has-keyword? [kw string?]
                       [k kata?])
         boolean?]{
  Determines if the kata's stimulus or response, when converted to a string, contains the
  given keyword.  Useful for filtering collections:

  @racketblock[
               (filter-collection (curry has-keyword? "Avatar") my-collection)
  ]
}

@defproc[(num-expressions [k kata?])
         number?]{
  Returns the number of expressions in the response of the kata (assuming the kata's
  response is to code some rackety thing).

  Can be useful if you want a rough estimate of difficulty for some kata.
}

@defproc[(find-by-id [id symbol?]
                     [collection kata-collection?])
         kata?]{
  Returns the first matching kata from @racket[collection], whose id is @racket[id].
}


@defproc[(kata-name [k kata?])
         string?]{
  Converts the kata's id into a human-friendly name by removing dashes and numbers,
  and by calling @racket[string-titlecase].
}

@defproc[(name-contains? [k kata?]
                         [s string?])
         boolean?]{
  Returns @racket[#t] if the kata's name contains @racket[s].
}


@defform[(define-sub-collections
           [collection kata-collection?]
           name
           ...)]{
 Defines and provides an additional kata collection per @racket[name].

 The name can either be a naked identifier, or an s-expression that starts with an
 identifier and is followed by a sequence of refinements on the desired sub collection.

 Example:

 @racketblock[
 (define-sub-collections battle-arena-katas
   avatar-katas
   enemy-weapon-katas
   ;A few special ones require us to filter out certain other katas.
   (enemy-katas
    (not/c (curryr name-contains? "Weapon"))))
 ]
}

@defform[(define/provide header body-expr ...)]{
  Defines something and provides it.
}

@defform[(define-kata-collection name kata-or-kata-collection ...)]{
  Constructs, defines, and provides a collection named @racket[name]
  from the given katas or kata collections.
}

@defmodule[ts-kata-util/rendering/scribble]

@defproc[(kata->scribble [k kata?]
                         [#:befores befores (listof procedure?) '()])
         scribble?]{
  Call this in a scribble document to embed a kata.  Use @racket[befores]
  to add front matter to katas, e.g. for gamification hints to coaches.

  By default the katas are given their own subsection.  This can be controlled
  with @racket[befores].  See the generated code in @racket[rendering.rkt]
  in any kata collection created with @racket[raco new-kata-collection COLLECTION-NAME].
}

@defproc[(kata-collection->scribble [kc kata-collection?]
                                    [#:befores befores (listof procedure?) '()])
         scribble?]{
 Same as @racket[kata->scribble] but for a collection.
}


@defmodule[ts-kata-util/rendering/pict]

@defproc[(kata->pict [k kata?])
         pict?]{
  Returns a pict representation of the kata.

  Can be useful within a scribble doc when talking about katas in a meta way.
  Sometimes you don't want the kata to be given its own section.  You just want them
  floating around as picts within a section.  (See @racket[ts-coach] for examples.)
}

