#lang scribble/manual

@title{Game Jam Scoring}

@section{Day of Competition}

On the day of competition (or before), the coach will
register each student on a school's team and will
also note which competitors will be competing solo
and which will be competing in pairs.

The players will sit in their designated area and
await the announcement of the Game Jam prompt.
Until the day of competition, the prompt is a closely
guarded secret.  When the prompt is announced, all
teams may begin working on their game immediately.
They may continue until the scoring phase begins.

During the scoring phase, judges will calculate a
@bold{game score} for each game created during the
Game Jam.  The @bold{game scores} will be summed to
produce the team's @bold{raw score}.  For the purposes
of ranking teams and determining winning teams, the @bold{raw score}
is divided by the number of games to get the team's @bold{final score}.

This prevents larger teams from having an unfair advantage over
smaller teams.

@subsection{Example - Final Class Score}

Suppose a team consists of Jimmy, Sally, Marco, and Marta.
Suppose that Jimmy and Marco are competing as a pair.
Now, suppose the final game scores are as follows:

1) 100 points for Jimmy and Marco's game.
2) 100 points for Sally's game.
3) 100 points for Martha's game.

The sum of these game scores gives a @bold{raw score} of 300.  The @bold{final score}
for the team would be 300 points divided by the 3 games.

Or 100 points.

This is the score that judges will use to rank teams.
If no other team has a better @bold{final score} than 100, then
Jimmy, Sally, Marco, and Martha's team wins.

@section{How are Games Scored?}

Judges will use a semi-automated process score games.
It is partially automated, to facilitate fast judging.
But part of the score is subjective, to prevent competitors
"gaming the system" -- i.e. just jumping through the hoops
but without actually creating a fun, playable game.

The scoring process for the upcoming Game Jam is explained on
this page.

@subsection{Overview}

@bold{Game Type:} Survival Game with Crafting

@bold{Scorable Features:}

@itemlist[
 @item{Avatar}
 @item{Coin}
 @item{Food}
 @item{Non-Player Characters}
 @item{Crafting/Recipes}]

@subsection{Score Sheet}

For convenience, we've created this scoresheet
for players, coaches, spectators, and judges to
use.  It is intended to serve as a quick overview
of the scoring system.  (For more details, though,
see the following sections.)

@(require "../scoring/scoresheet.rkt" racket)
@(require 2htdp/image)
@(scoresheet)

@(define (plus s)
   (text (~a "+" s) 24 'darkgreen))

@(define (minus s)
   (text (~a "-" s) 24 'darkred))


@subsection{Avatar Score}

The game must have an avatar that can be moved
with the arrow keys.  The avatar must lose health
over time and must gain health by eating food.

@bold{Sprint Bonus:}

@(plus 5) Have a player within the first 5 minutes of competition.

(NOTE: To claim this sprint bonus, a competitor must signal a judge
and demonstrate a working game with an avatar.  Signals must be made
before the 5 minute mark in order to gain the sprint bonus points.)

@bold{Computer-Scored Points:}

@itemlist[@item{@(plus 1) for having an avatar at all}
          @item{@(plus 1) per animation frame. Max @(plus 4)}]

@bold{Human-Scored Points:}

@itemlist[@item{@(plus 5) for having an avatar that matches the theme.}
          @item{@(plus 5) per animation frame that matches the theme.  Max @(plus 4)}]

Although the definition of "matching the theme" is always subjective
and up to the judges' discretions, some rules of thumb are:

@itemlist[@item{If the prompt implies a main character, the avatar should look like that.}
          @item{Animation frames should suggest locomotion.  Example: If the avatar is a space ship,
           a theme-matching animation might imply some kind of propultion system.  Example: If the avatar is a unicorn,
           a theme-matching animation might imply a unicorn walking.}]

@subsubsection{Example - Avatar Scoring Sheet}

Suppose the Game Jam prompt is announced to be: "Slimes vs Unicorns.
Slimes have taken over the forest, and the unicorns must learn to
survive in the desert."

Suppose that within the first 5 minutes of the competition, Marco creates a
avatar that looks like a red circle.  This qualifies him for a +5 sprint bonus.

Suppose he goes on to create three animation frames of unicorn walking,
which his avatar use while walking and replaces the red circle with these
animation frames.  (The sprint bonus has already been awarded, so he does
not lose the bonus points.)

Assuming nothing changes about the avatar before the end of the Game Jam,
Marco's Avatar score would end up like this:

@(avatar-section #:sprint-bonus 5
                 #:avatar-points 1
                 #:animation-points 3
                 #:theme-avatar-points 1
                 #:theme-animation-points 3)


@subsection{Coins}

The game must have coins/point items that can be
gathered for Gold.

@bold{Sprint Bonus:}

@(plus 5) sprint bonus.  Implement at least one coin
item within the first 10 minutes of the competition.

@bold{Computer-Scored Points:}

@(plus 1) for each coin item in game.  Max @(plus 10).

@bold{Human-Scored Points:}

@(plus 1) per coin item for theme cohesion.  Max @(plus 10).

Although the definition of "matching the theme" is always subjective
and up to the judges' discretions, for some rules of thumb, see the previous section
on food items.  The same idea applies: Make sure these items seem like they
fit with the world or would be something the avatar might use.

@subsubsection{Example - Coins Scoring Sheet}

Suppose we continue our example from the previous section.
Marco creates one coin item -- an Ancient Desert Artifact.
But suppose he loses some time because he must track down a
bug in his code.  He ends up completing his Artifact by the 11 minute
mark.  This means he cannot get the sprint bonus in this category.

Assuming nothing changes, here are Marco's scores for this category:

@(coin-section #:coin-points 1
               #:theme-coin-points 1)

That's @(plus 2) in this category.  He's at @(plus 15) so far.



@subsection{Food}

The game must have food items that the avatar
can consume in-game.

@bold{Sprint Bonus:}

@(plus 5) Have a food item within the first 10 minutes of competition.

(NOTE: To claim this sprint bonus, a competitor must signal a judge
and demonstrate a working game with a food item.  Signals must be made
before the 15 minute mark in order to gain the sprint bonus points.)

@bold{Computer-Scored Points:}

@itemlist[@item{@(plus 1) for each food item in game. Max @(plus 10)}]

@bold{Human-Scored Points:}

@itemlist[@item{@(plus 1) for each food item that matches the theme. Max @(plus 10)}]

Although the definition of "matching the theme" is always subjective
and up to the judges' discretions, some rules of thumb are:

@itemlist[@item{If the prompt implies a main character, the food should be something that avatar might "eat".
           Example: If the avatar is a spaceship, some "food" might be a barrel of fuel.
           Example: If the avatar is a unicorn, some food might be berries.}
          @item{Any food items should seem like they belong in the world.  A barrel of fuel probably doesn't
           belong in a world full of unicorns.  (The exception is, of course, if the unicorn is a robotic unicorn --
           in which case perhaps a barrel of fule @bold{does} match the theme -- but berries would not.)}]

@subsubsection{Example  - Food Scoring Sheet}

Suppose (as in the example in the previous section) that
Marco creates three food items:

@itemlist[
   @item{Prickly Pears, which give the avatar @(plus 1) health}
   @item{Sand Bread, which gives the avatar @(plus 5) health}
   @item{Prickly Pear Pie, which gives the avatar @(plus 10) health}]

Also, suppose he created the berries within the first 10 minutes of
the competition.  This would qualify him for a @(plus 5) sprint bonus.

Assuming nothing changes related to food items before the end of the
competition, the final food score would look like:

@(food-section #:sprint-bonus 5
               #:food-points 3
               #:theme-food-points 3)

That would be a total of @(plus 11) points.  Added to his
previous score of @(plus 15), that would be @(plus 26) points so far!



@subsection{Non-Player Characters}

The game must have Non-Player Characters (NPCs).

@bold{Sprint Bonus:}

@(plus 5) sprint bonus.  Implement at least one NPC
within the first 20 minutes of the competition.

@bold{Computer-Scored Points:}

@itemlist[@item{@(plus 1) for each NPC in game.  Max @(plus 5).}
          @item{@(plus 1) for each line of dialog an NPC has (Max @(plus 4) per NPC).}]

@bold{Human-Scored Points:}

@itemlist[@item{@(plus 1) per NPC for theme cohesion.  Max @(plus 5).}
          @item{@(plus 1) for each line of dialog an NPC has that is cohesive with
the theme (Max @(plus 4) per NPC).}]

Although the definition of "matching the theme" is always subjective
and up to the judges' discretions, here are some rules of thumb:

@itemlist[@item{For the NPCs appearance -- please see the section on avatars.  The same aesthetic ideas apply.
           Make sure the NPC seems like it belongs in that world.}
          @item{Lines of dialog should also seem like they are relevant.  They should seem like something
           that NPC would say.  NPCs should not all sound the same either.  They should have
           "voices" that are distinct from each other.}]

@subsubsection{Example - NPC Scoring Sheet}

Suppose, in our running example, Marco creates
1 NPC by the 19 minute mark.

The NPC is a desert nomad with two lines of
dialog about the weather in the desert and one
line about how to make Prickly Pear Pie.

Marco would receive the sprint bonus of @(plus 5), along
with @(plus 1) for having an NPC and @(plus 3) for its lines of dialog.
Since the NPC looks it belongs in the
desert, Marco would also get an additional @(plus 1).  And
since the dialog lines are all theme-cohesive, he would
get an additional @(plus 3).

@(npc-section #:sprint-bonus          5
              #:npc-points            1
              #:dialog-points         2
              #:theme-npc-points      1
              #:themedialog-points    2)

That's a total of @(plus 11).  He now has @(plus 37) total.

@subsection{Crafting/Recipes/Tech-tree}

The game must have "recipes", allowing new items
to be created from existing ones.

A recipe involves three things:

@itemlist[@item{Inputs.  A list of input items.  E.g. marshmallows, chocolate, and crackers.}
          @item{Output.  A single output item.  E.g. a chocolate s'more.}
          @item{Trigger. An in-game entity that serves as the place where the recipe can be triggered. E.g. a campfire.}]

Note that the word "recipe" does not imply
that the inputs or outputs must be food.  Here's
another example:

@itemlist[@item{Inputs.  A list of input items.  E.g. wood and matches.}
          @item{Output.  A single output item.  E.g. a campfire.}
          @item{Trigger. An in-game entity that serves as the place where the recipe can be triggered. E.g. a firepit.}]

And yes, the output of one recipe can become
either the inputs of another recipe or even the
trigger for another recipe.  For example, to make
S'mores, you may have to first produce a campfire.

@bold{Sprint Bonus:}

@(plus 5) sprint bonus.  Implement at least one recipe
within the first 25 minutes of the competition.

@bold{Computer-Scored Points:}

@itemlist[@item{@(plus 1) for each recipe in game.  Max @(plus 10).}
          @item{@(plus 1) for each ingredient in a recipe.  Max @(plus 4) per recipe.}]


@bold{Human-Scored Points:}

@itemlist[@item{@(plus 1) for each theme-matching recipe in game.  Max @(plus 10).}
          @item{@(plus 1) for each theme-matching ingredient in a recipe.  Max @(plus 4) per recipe.}]

Note that all recipes must be craftable in game.

Although the definition of "matching the theme" is always subjective
and up to the judges' discretions, here are some rules of thumb:

@itemlist[@item{Recipes should make sense.  The inputs should, in theory, be able to produce
          the output.  A recipe that takes a Stick and a Rock and produces a Cat doesn't
          really make sense (unless the prompt suggests that such a thing can happen in the
           game world.)}
          @item{The triggering entity should make sense.  Producing food from a cooking pot
           makes sense.  Producing a house from a cooking pot does not.}]


@subsubsection{Example - Crafting Scoring Sheet}

Suppose, in our running example, Marco creates two recipes:

@itemlist[@item{Triggered at the cooking cauldron: Prickly Pears + Sand Bread can make Prickly Pear Pie.}
          @item{Triggered at the cooking cauldron: Sand + Sand Grinding Rock makes Sand Bread.}]

Suppose he completes the first of these recipes within the first 25 minutes of the competition.
Assuming nothing changes, here's how Marco's crafting score will end up:

@(crafting-section #:sprint-bonus      5
                   #:recipe-points     2
                   #:ingredient-points 4
                   #:theme-recipe-points 2
                   #:theme-ingredient-points 4)


That's a total of @(plus 17).  He now has @(plus 54) total.

@subsection{Overall Aesthetics}

This section is the most subjective of all -- but also (arguably) the most important
to the art of game design.  In this section, the judge will award between @(plus 0) and @(plus 50) points
for the game's overall aesthetics.

It is impossible to fully reduce an art to a simple set of rules, but here
are some guidelines:

@itemlist[@item{The game should be well balanced.  It shouldn't be too hard.  It shouldn't be too easy.  In
           a survival game, this means you shouldn't die so fast that you always lose.  But there shouldn't be
           so much food that surviving is trivial.}
          @item{The art style should be consistent.  All assets should "feel" like they belong together.}
          @item{Every decision should be part of a cohesive whole.  Marco's game in our example above is
           pretty good.  All of the items and NPCs feel like they have a desert theme.  One of the NPCs
           mentions one of the recipes -- which is a nice touch because it helps alert the player to
           the fact that this recipe exists.}]

Games will be judged by people with experience playing, designing, and analyzing games.  They
will leverage their own experience to decide what to award points for.  Although these judgements will be
subjective, competitors are encouraged to take an artistic look at the games they themselves play.
What is it about certain games that make them more fun than others?  What are the elements that make something
fun?  What are the elements that make players feel something?

At the end of the day, game design is art.  Sometimes art obeys rules.  Sometimes it breaks rules.

Competitors are encouraged to try both.  If the judges agree with the competitor's decisions and give points, great.

If not, don't worry.  Some of the best artists in history had to struggle before their art was
recognized for what it was.  Be bold.  Take heart.
