# TS-Kata-Collections

These kata collections form the basis for various educational offerings.
Each teaches a programming language in a gamified way.  Everything in this
repo is public.  It can be viewed at katas.thoughtstem.com.  (Obviously, only put
stuff in here that ought to be public on the web.)

The common package between kata collections is `ts-kata-util`, which
contains utilities for making the documentation of katas faster.  It can
be required in any TS-Kata-Collection or any TS-Language.  It can serve
as a bridge or interface between language and kata collection.

# Installation

```
git clone https://github.com/thoughtstem/TS-Kata-Collections.git
cd ts-kata-util
raco pkg config --set git-checkout-credentials "GITHUB-NAME:GITHUB-PASSWORD"
raco pkg install
```

# Common operations:

## Make a new collection

```
raco new-kata-collection COLLECTION-NAME
```

Will create the following skeleton directory structure:

```
COLLECTION-NAME/
   info.rkt
   katas.rkt
   rendering.rkt
   scribblings/
     manual.scribl
```

At any time, you can run `raco build-kata-docs`, which will read your
`manual.scribl` file and produce a `doc` folder that contains the
compiled HTML.

All kata data code should go in `katas.rkt`.  Any custom rendering code for 
your katas should go in `renering.rkt`.  Finally, any code for organizing
katas into a website, should go in `scribblings/manual.scribl`.

Remember that kata collections are also Racket packages,
so you can share kata data between different collections.

For example:

```
(require ts-fundamentals/katas)
```

This gives you access to the katas defined in the ts-fundamentals collection.
Whenever possible, share katas between collections rather than duplicating
them.  

## Running tests

If you've cloned `TS-Kata-Collections`, you may also have cloned `TS-Langauges`.
If so, you may need to rebuild a langauge's library of examples in order
to make katas based on them.  

This can be run in any TS-Language repo.  It runs tests and compiles out data
that can be used in TS-Kata-Definitions.  

```
raco build-lang-examples
```

Examples are always stored in a folder called `examples`.  These examples must all
be defined with the syntactic form `(define-example-code ...)`.  A file that does this
is called an `example file`.  See below for how these example files are used in 
the documentation of kata collections.

## Releasing to the world

At some point, you'll want to release your kata collection's beautiful
web page to the rest of the world.

To do so, in the root of `TS-Kata-Collections`:

```
raco rebuild-index
```

This reads from `index.rktd` which katas to index on `katas.thoughtstem.com`
and `katas.thoughtstem.com/unlisted.html`.  The `index.rktd` file
should make it clear how to control which packages go where.

# Development

Adhere to our `dev/master` workflow.  Pushing to `master` makes the Kata Collections
live to the world at http://katas.thoughtstem.com.

# TODO

Scribble docs for ts-kata-util
