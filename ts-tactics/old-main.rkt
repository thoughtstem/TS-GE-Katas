#lang racket

(struct material (name quantity))

(struct tactic   (input-materials description)) ;Tactics can also preserve, produce, or destroy materials...

;Materials can be created or destroyed during a tactic...

;A tactic can be composed of a list of tactics t1...tn
; iff each tactic tx's input material constraints
; are met at the time it runs...
; starting-materials -> t1 ... tx-1 -> output-materials

;Reconsider the word "student".  Is there something better?
;  "player" "coder"

(define (pass-card-and-make-ids lang) 
  (tactic (list
            ;Is this generic in the same way that a marker or blank id is generic?  Feels more specific... 
            ;It is certainly parameterized by language...
            (material (~a 'challenge-card- lang) 1)  
            (material 'marker         1)
            (material 'blank-id-card  "# of ids in challenge card..."))

          ;Could this be scribble code?
          (list
            "Deal a challenge card to Starting Coder"
            "Deal a marker to Starting Coder"
            "Count identifiers on challenge card"
            "Deal that many blank cards, split (roughly) evenly between coders"
            (list
              "Rotate:"
              "Each student, look @ challenge card, write down one identifier, keyword, or datum that hasn't yet been written (unless it appears twice in the challenge card)."
              "Place id card back on table, in the middle where everyone can see it"
              "Pass the challenge card and marker to the left"
              "Continue until all ids in the pot")
            "Have the team check if they can write the challenge response with the ids in the pot"
            "Correct?  Kata test, or new tactic, or repeat with different tone"
            "Wrong?  Erase ids and try again")))


;What is the purpose of this code?

;Rendering:
;  Produce cards that describe tactics
;    Visual language for describing tactics

(require pict)
(define (tactic->pict t)
  (blank))

;   Generate example diagrams
(define/contract (tactic->diagram t step)
  (-> tactic? number? pict?)
  (blank)
  ;E.g. if a resource is rotating around a table, show that.
  ;  If something is in the middle, show that.  Etc...
  ;  If someone is "out" or "it", show that...
  )


;Inventory + Costs:
;  Calculate material costs for table, room, location, city

;Does this need to take langs too?
(define/contract (tactics->total-materials ts)
   (-> (listof tactic?) (listof material?)) 
   '())


;Error checking:
;  Simulate logistics within a table or room

;  (When) will a room run out of materials?
;  Will two tables ever need the same materials?
(define/contract (enough? room-materials table-materials ts)
   (-> (listof material?) (listof tactic?) (listof material?) boolean?) 

   #f)


;Any tactic that only uses resources on a table can be run at any time.
;Any tactic that only uses room resources, might have to wait until another table is done.

;Can we ignore the second case?
;  --> Why have room resources at all?  
;      Cost savings
;      Centralization
;      Organization

;But can't room resources always just be divided up across tables?
;  Blank cards, eg.
;  Markers, eg.
;  Basically, anything we put in the "teacher kit"

;How do the decks of challenge cards fit in?
;  Technically the challenge cards can be room resources
;    but because tactics are parameterized by langs and challenge cards are lang-specific...
;    only the tables that are using that language will be collecting that resource.


;What room-level property do we want?
;  Any table can run any tactic at any time?
;  Any table can run at least one tactic at any time? 
;    - Fewer materials...
;    - But more negotiation with other materials?











