#lang scribble/manual

@(require "../tactics/lang.rkt")
@(require "../tactics/tactic-library/team-memorize.rkt")
@(require "../tactics/tactic-library/mafia.rkt")

@section{Subroutines}

Subroutines must be run on the computer, because they will print out differently depending on what arguments you supply.  However, we will print some examples here so that you can get a sense of what certain common subtroutines will look like. 

@subsection{Pass And Memorize}

@codeblock{
  #lang ts-tactics
  (pass-and-memorize)
}

Gives:

@(tactic->scribble
  (pass-and-memorize))

@subsection{Post Mortem}

@codeblock{
  #lang ts-tactics
  (all-correct-post-mortem)
}

Gives:

@(tactic->scribble
  (all-correct-post-mortem))


@subsection{Select Secret Subgroup}

@codeblock{
  #lang ts-tactics

  (select-secret-subgroup 'Hackers)
}

Gives:

@(tactic->scribble
  (select-secret-subgroup 'Hackers))


@subsection{Collaboratively Debug}

@codeblock{
  #lang ts-tactics

  (collaboratively-debug)
}

Gives:

@(tactic->scribble
  (collaboratively-debug))


@subsection{Vote Member Into New Group}


@codeblock{
  #lang ts-tactics

  (vote-member-into-new-group (not-in 'Jail) 'Jail)
}

Gives:

@(tactic->scribble
  (vote-member-into-new-group (not-in 'Jail) 'Jail))





