#lang scribble/manual

@(require "../tactics/lang.rkt")
@(require "../assessments/main.rkt")

@title{ThoughtSTEM Language Assessment Handbook}

@section{Introduction}

Welcome!  This handbook contains learning "assessments".

The purpose of an assessment is to assign a number between 1 and 5 to the six types of student skills.  Here is an example assessment:

@(skill-plot (report (k-2-year-1)))

Let's pick this apart.  At the bottom, we see that this student is a Level 2 Coder, with three langauges learned.  They are also a level two Collaborator and Communicator, and Level 1 at everything else. 

[Age independence??]

[Swap graph output to match legend...]

Assessments are critical for identifying a student's strengths and weaknesses and for comparing students to the average within their "skill group" -- i.e. same age and number of years learning coding.  
This allows us to do apples-to-apples comparisons of students with diverse backgrounds.  For example, let us compare the expected skill level of an second grader who has been training for 3 years to the expected skill level of a 9th grader who has been training for 1 year. 

@(compare-two
  #:title "9th-grader vs 2nd-grader"
  #:labels '("9th-grader (1 year)" "2nd-grader (3 years)")
  (k-2-year-3)
  (9th-12th-year-1))

Notice that the average 9th grader is expected to know at least 3 languages after 1 year -- and to know them to a high degree of proficiency: Level 4.   The 2nd grader (having trained for 3 years) will know 9 languages, but is not expected to know any of those languages as proficiently.   The 2nd grader is also not expected to have leadership or teaching skills (if they do have these skills, that's a bonus -- but it isn't required at that age level).

This handbook describes how to perform an assessment on a student (or on yourself).  For the purposes of comparison, it also gives common benchmarks for expected skill levels based on age and length of time training.

The major sections of this book cover the core concepts of assessments, step-by-step processes for performing those assessments, and benchmarks for comparison.

@section{Core Concepts}

@subsection{Skill Types}

There are six skill types, with explanations:

@itemize[@item{@bold{Coder.}  This pertains to skill at writing code -- specifically with regard to translating from high-level specification in a student's native language to code.  Usually, that means from English to code.}
         @item{@bold{Communicator.}  This pertains to skill at communicating with and about code.  It includes one's ability to draw high-level "whiteboard" diagrams of code, speak articulately about code and specifications, use appropriate technical vocabulary, and verbally explain one's thought process @emph{simultaneously with} writing code.}
         @item{@bold{Collaborator.}  This pertains to one's ability to work in teams, distribute work equally and fairly amongst team members, take direction, self-organize, and finish projects in a timely manner without over- or under- working any member of the team.}
         @item{@bold{Leader.}  This pertains to one's ability to lead a team, distribute work appropriately to others, understand the strengths and weaknesses of other team members, communicate effectively and authoritatively, resolve conflicts, and maintain a positive, high-energy working environment.}
         @item{@bold{Teacher.}  This pertains to one's ability to explain how code works, tactfully identify the strengths and weaknesses in other people's skillsets, nurture their strengths, improve their weaknesses, inspire others to want to improve, explain verbally and visually how to use code you've written, explain verbally and visually how to use code that you haven't written.  The difference between "Leader" and "Teacher" is: A leader can lead a team that is already full of skilled "Collaborators"; teacher knows how to make a team more skilled over time and knows how to make members @emph{into} skilled collaborators.}
         @item{@bold{Architect.}  This pertains to one's ability to design and build large systems over a long period of time, while working with more than one team of people.  It includes being able to build systems that help real people, to convince those people that your system can help them, and to teach them how to use your system.  Above all it requires writing clear, concise, and complete documentation of software systems for various stakeholders.}]

Note that we assign all students a level of 1 ("Novice") in each of these categories from the beginning.  A Level of 0 is never assigned.  A beginning student with no particularly relevant skills would have the following assessment:

@(skill-plot (report (total-novice)))

@subsection{Skill Levels}

There are 5 skill levels:

@itemize[@item{@bold{1 - Novice.}}
         @item{@bold{2 - Advanced Beginner.}}
         @item{@bold{3 - Competent.}}
         @item{@bold{4 - Proficient.}}
         @item{@bold{5 - Expert.}}]

Our model of expertise is a modification of the well-known Dreyfus Model, which you don't necessarily need to understand in full.  However, it's imperative to remember that the distance between Novice and Expert is gigantic.  

It is, in fact, much larger than most Novices realize.  This is why we uses badges and other symbols to mark progress during class.  These can be given out more regularly than levels in the above model.  

Students can become disheartened when they realize hard truths, such as: it may take a year or more to go from Novice (Level 1) to Advanced Beginner (Level 2); and that becoming an Expert may take many years.  

The assessments in this document are good for comparing students, but not always great for motivating them.  This should be made clear to any student being assessed.  It is important that they know that there is no shame in being assessed as a "Novice" -- and that even assessments of "Advanced Beginner" are a big deal.

To define these terms more clearly, let us try to get a sense of what "Expert" means and work backwards from there.  The following, taken together, help define "Expert":

@itemize[
@item{An @bold{Expert} performs tasks significantly better than a @bold{Novice}}
@item{An @bold{Expert} can perform @emph{unconsciously} at a level that a @bold{Novice} cannot achieve even with total focus and concentration.  An expert chess player, for example, can play a strong game of chess while multi-tasking -- easily beating a @bold{Novice} who is trying their best.  Likewise, an Expert pianist can play a complicated piece of music from memory while carrying on a converstation; whereas a @bold{Novice} would be unable to play the piece at all.}
@item{An @bold{Expert} makes an extremely high level of skill look effortless and easy.  Someone who is @bold{Competent} or @bold{Proficient} may have an extremely high level of skill, but only an @bold{Expert} has so internalized those skills that they scarcely need to devote their working memory to it at all.} 
@item{Most computer science graduates are @emph{not} @bold{Expert} coders.}
@item{Most straight-A computer science graduates are, at best, @bold{Proficient} coders.  Many graduates are @bold{Advanced Beginners} and @bold{Competent}.  Sometimes @bold{Expert} is a level that graduates achieve later on the job.  Some may never achieve it if they stop learning once they have a job -- as many developers do..}
@item{Most computer science graduates are, at best, @bold{Competent} communicators.}
@item{Most computer science graduates are, at best, @bold{Advanced Beginner} collaborators.}
@item{Most computer science graduates are, at best, @bold{Novice} teachers, leaders, and architects.}
]

We need to discuss one more concept before we procede to the assessment algorithms.  The concept is @bold{Parameterized Expertise}.

It is extremely hard to assess whether someone is an @bold{Expert} at something as broad and complicated as "Coding Skills" (similar problems arise when assessing "Music Skills" or "Painting Skills").  The more specific the domain, the easier it is to detect @bold{Expertise} and to differentiate it from other high levels of acheivement like @bold{Competency} or @bold{Proficiency}.

This is where the idea of @bold{Parameterized Expertise} becomes critical for assessment.  To use piano as a metaphor: It can be hard to determine if someone is @bold{Expert} or @bold{Proficient} at the piano @emph{as a whole}.  The @bold{Expert} player and the @bold{Proficient} player have both had thousands upon thousands of hours of training; and a thirty-minute assessment cannot possibly examine all facets of piano skill.

For that reason, we never assess "Theoretical Expertise".  That's more of an abstract concept that we can only guess at with assessments.  We can gain more and more confidence about a student's level of "real Expertise" the longer and more deeply we assess them, but we can never know the true value for certain.

Instead, we assess "Parameterized Expertise" -- which means that we (who are doing the assessments) pick various parameters on which to assess people.  For example, if we were assessing pianists, those parameters might be songs.  Let's suppose the songs are:
 
@itemize[
@item{@bold{Concierto Difficulto}}
@item{@bold{Etude Requiring 12 Fingers}}
@item{@bold{Cannon in F#, A#, B#, and E# major}}
]

Now, as long as a pianist has learned these songs, we can evaluate their parameterized Expertise @emph{on these songs}.  This works very well most of the time and gives a good estimate of "theoretical Expertise".

There are just two caveats, which rarely come up in practice, but which should be mentioned for the sake of completeness.

First, @bold{Novices} sometimes conflate parameterized @bold{Expertise} with theoretical @bold{Expertise}, which can lead them to believe that becoming an expert only requires that they learn 3 songs.  Obviously, Experts know many more than 3 songs.  Novices who think they have discovered a shortcut to becoming an Expert should be reminded that parameterized expertise is not equivalent to theoretical expertise.

Second, the songs chosen as the parameters may vary in difficulty.  Suppose, @emph{Cannon in F#, A#, B#, and E# major} is easier than the other two.  And suppose a @bold{Novice} learns this song to perfection.  They would be assessed at an @bold{Expert} level, at which point they may be afraid to continue training -- because their level will likely fall if they were to be assessed on all three parameter songs together.  

Because of these caveats, when we assess parameterized Expertise, we always clearly include the parameters in the assessment.  They are part of the complete story.  That is why you'll always see "langs: X" printed on the bottom bar of a coding assessment:

@(skill-plot (report (9th-12th-year-1)))

The lang number gives a sense of how much confidence can be placed on the assessment data.  The more languages the student is assessed on, the more likely the assessment is accurate.  Additional caution must be taken to assess students on languages that are sufficiently large and of relatively similar size.  Just as it only makes sense to evaluate a pianist with sufficiently long songs.  Very short songs would be too easy for a @bold{Novice} to master 

We have designed ThoughtSTEM languages to make this easy for assessors.  The general rule is, there are two categories of languages: small and normal.  All K-2 languages are small.  All other languages are normal.  So a student who has assessed on K-2 languages would need to re-assess on normal languages starting at the 3rd-grade level and beyond.  (Any time we show a chart of K-2 student data, the assumption is that the "lang: X" notation indicates that the student has learned X small languages.  Otherwise, it indicates X normal languages.)

@subsection{Assessment Algorithms}

@subsubsection{Assessing a Coder}

@bold{Basic Translation Assessment}

;Sit so you cannot see the computer screen.
;Watch the student.

;Should this be in a loop?
@tactic->scribble[
(list
 (instruction 'Assessor 
   (verb "Select card from assessment language"))
 (instruction 'Assessor 
   (verb "Read the specification aloud"))
 (instruction 'Assessor 
   (give-to 'Coder "the card face-down"))
 (instruction 'Assessor 
   (say "I'd like you to implement the code from the specification written here on the card.  You can touch the card.  You can do anything you want really.  There are no rules here.  Just let me know when you're done, and please make sure I can see the card at all times.."))
 (instruction 'Assessor-B 
   (verb "Grade according to rubric"))
)
]



Grading:
  If student ever types on the computer while reading the back of the card
     circle Novice.

  If student never types on the computer while reading the card but looks at the back of the card 
     circle Advanced Beginner 

  If student never types on the computer while reading the card nor looks at the back of the card
     circle Competent

  If student looks at back of card at all,
     cross off expert, proficient, and competent

  If student never looks at the back of the card and writes calmly and correctly 
     Do expert/proficient test next time.

  At end: If the answer is wrong, the test must be repeated with a new random card.



     


Consider, basic profiles of each category. 

@tactic->scribble[
(list
 (instruction 'Student
   (verb "shifts nervously"))
)
]


@subsubsection{Assessing a Communicator}

@subsubsection{Assessing a Collaborator}

@subsubsection{Assessing a Leader}

@subsubsection{Assessing a Teacher}

@subsubsection{Assessing a Architect}


@subsection{Benchmarks}


@(skill-plot (report (3rd-5th-year-1)))
@(skill-plot (report (3rd-5th-year-2)))
@(skill-plot (report (3rd-5th-year-3)))

@(skill-plot (report (6th-8th-year-1)))
@(skill-plot (report (6th-8th-year-2)))
@(skill-plot (report (6th-8th-year-3)))

@(skill-plot (report (9th-12th-year-1)))
@(skill-plot (report (9th-12th-year-2)))
@(skill-plot (report (9th-12th-year-3)))
@(skill-plot (report (9th-12th-year-4)))

@(compare-first-years)
@(compare-second-years)
@(compare-third-years)

@(compare-k-2-years)
@(compare-3rd-5th-years)
@(compare-6th-8th-years) 
@(compare-9th-12th-years) 

