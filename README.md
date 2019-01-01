# TS-Kata-Collections

These kata collections form the basis for various educational offerings.
Each teaches a programming language in a gamified way.

The common package between kata collections is `ts-kata-util`, which
contains utilities for making the documentation of katas faster.  It can
be required in any TS-Kata-Collection or any TS-Language.  It can serve
as a bridge or interface between language and kata collection.

Common operations:

# Running tests

This can be run in any TS-Language repo.  It runs tests and compiles out data
that can be used in TS-Kata-Definitions.  

```
raco build-lang-examples
```

Examples are always stored in a folder called `examples`.  These examples must all
be defined with the syntactic form `(define-example-code ...)`.  A file that does this
is called an `example file`.  See below for how these example files are used in 
the documentation of kata collections.

# Documenting Kata Collections

In any scribble doc in a TS-Kata-Collection, this would display the code for that
example

```
@(show-kata-code 'battle-arena 'avatar-1) 
```

Then, to build the docs, use:

```
raco build-kata-docs
```

This can be run in any TS-Kata-Collection repo.  Note that this will insert code from
example any files referenced with `(show-kata-code ...)`.  

(One potential gotcha:
The code that is inserted into the Scribble doc is not pulled directly from the
example file, but rather from a file that is produced whenever the example file
is run in DrRacket or by `raco build-lang-examples`.  So if you're noticing that
your example code isn't getting placed into your docs, you probably need to re-run
your example code file.  This is to ensure that you're only ever documenting code
that really does run.  In the future, we could probably make this process smoother
without sacrificing this safety guarantee.)

# Development

Adhere to our `dev/master` workflow.  Pushing to `master` makes the Kata Collections
live to the world at http://katas.thoughtstem.com.

# TODO

Scribble docs for ts-kata-util
