# TS-Kata-Collections

-Test-

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
raco build-examples
```

# Documenting Katas

In any scribble doc in a TS-Kata-Collection, this would display the code for that
example

```
@(show-kata-code 'battle-arena 'avatar-1) 
```

# Development

Adhere to our `dev/master` workflow.  Pushing to `master` makes the Kata Collections
live to the world at http://katas.thoughtstem.com.

# TODO

Scribble docs for ts-kata-util
