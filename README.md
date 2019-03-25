# TS-Kata-Collections

[![Build Status](https://travis-ci.com/thoughtstem/TS-Kata-Collections.svg?branch=master)](https://travis-ci.com/thoughtstem/TS-Kata-Collections)

These kata collections form the basis for various educational offerings.
Each teaches a programming language in a gamified way.  Everything in this
repo is public.  It can be viewed at katas.thoughtstem.com.  (Obviously, only put
stuff in here that ought to be public on the web.)

The common package between kata collections is `ts-kata-util`, which
contains utilities for making the documentation of katas faster.  It can
be required in any TS-Kata-Collection or any TS-Language.  It can serve
as a bridge or interface between language and kata collection.

# Installation

First install `ts-kata-util` (and grant yourself access to any private repos)
```
git clone https://github.com/thoughtstem/TS-Kata-Collections.git
cd TS-Kata-Collections
cd ts-kata-util
raco pkg config --set git-checkout-credentials "GITHUB-NAME:GITHUB-PASSWORD"
raco pkg install
```

If you're going to be working on any `TS-Languages`, get that repo and install 
all of them:

```
git clone https://github.com/thoughtstem/TS-Languages.git
cd TS-Languages
raco install-all-here
```

Or use `raco install-all-here --no-docs` for faster installations.

Now, with langs installed, you can install the kata collections

```
cd TS-Kata-Collections
raco install-all-here
```

This installs all the katas as racket packages. 

# Common operations:

## Make a new collection

```
raco new-kata-collection COLLECTION-NAME
```

Will create the following skeleton directory structure:

```
KATA-COLLECTION-NAME/
  - README.md
  - info.rkt
  - katas.rkt 
  - katas/
  - rendering.rkt
  - scribblings/
    - manual.scrbl
  - doc/
```

At any time, you can run `raco build-kata-docs`, which will read your
`scribblings/manual.scribl` file and produce a `doc` folder that contains the
compiled HTML.

All kata definition code should go in `katas.rkt`.  Any custom rendering code for 
your katas should go in `renering.rkt`.  Finally, any code for organizing
katas into a website, should go in `scribblings/manual.scribl`.

Remember that kata collections are also Racket packages,
so you can share katas between different collections.

For example:

```
(require ts-fundamentals/katas)
```

This gives you access to the katas defined in the ts-fundamentals collection.
Whenever possible, share katas between collections rather than duplicating
them.  

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

# Further documentation 

See Scribble docs for `ts-kata-util` 


