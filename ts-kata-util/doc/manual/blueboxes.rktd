3163
((3) 0 () 7 ((q lib "ts-kata-util/katas/main.rkt") (q lib "ts-kata-util/rendering/pict.rkt") (q 320 . 7) (q 622 . 4) (q 723 . 4) (q 850 . 5) (q 521 . 4)) () (h ! (equal) ((c def c (c (? . 1) q name-contains?)) q (3186 . 4)) ((c def c (c (? . 0) q get-example-code)) q (60 . 4)) ((c def c (c (? . 0) q fill-in-stimuli)) q (2441 . 4)) ((c def c (c (? . 1) q filter-collection)) q (2745 . 4)) ((c def c (c (? . 0) q kata)) c (? . 2)) ((c def c (c (? . 0) q kata-tests)) c (? . 2)) ((c def c (c (? . 0) q expression-lang)) c (? . 5)) ((c def c (c (? . 0) q kata-id->kata-name)) q (2188 . 3)) ((c def c (c (? . 0) q kata-collection?)) c (? . 4)) ((c def c (c (? . 0) q within)) q (1397 . 7)) ((c form c (c (? . 0) q define-example-code)) q (0 . 2)) ((c def c (c (? . 1) q merge-collections)) q (2598 . 4)) ((c def c (c (? . 0) q stimulus?)) c (? . 3)) ((c def c (c (? . 0) q get-example-names)) q (172 . 3)) ((c def c (c (? . 0) q lang->kata-collection)) q (2358 . 3)) ((c def c (c (? . 0) q struct:stimulus)) c (? . 3)) ((c def c (c (? . 0) q kata?)) c (? . 2)) ((c form c (c (? . 1) q define/provide)) q (3351 . 2)) ((c def c (c (? . 0) q struct:kata)) c (? . 2)) ((c def c (c (? . 1) q kata->scribble)) q (3467 . 4)) ((c def c (c (? . 0) q make-kata-collection)) c (? . 4)) ((c def c (c (? . 1) q find-by-id)) q (3027 . 4)) ((c def c (c (? . 0) q struct:kata-collection)) c (? . 4)) ((c def c (c (? . 0) q struct:expression)) c (? . 5)) ((c def c (c (? . 0) q read)) q (1119 . 4)) ((c def c (c (? . 1) q kata-name)) q (3132 . 3)) ((c def c (c (? . 0) q stimulus)) c (? . 3)) ((c def c (c (? . 0) q expression?)) c (? . 5)) ((c def c (c (? . 0) q say)) q (1226 . 3)) ((c def c (c (? . 0) q do)) q (1276 . 3)) ((c def c (c (? . 0) q set-id)) q (1325 . 4)) ((c form c (c (? . 0) q define/contract/doc)) q (252 . 2)) ((c def c (c (? . 0) q kata-id)) c (? . 2)) ((c def c (c (? . 1) q has-keyword?)) q (2886 . 4)) ((c form c (c (? . 1) q define-kata-collection)) q (3399 . 2)) ((c def c (c (? . 0) q struct:response)) c (? . 6)) ((c def c (c (? . 0) q response)) c (? . 6)) ((c def c (c (? . 0) q make-expression)) c (? . 5)) ((c def c (c (? . 0) q coach)) q (2067 . 4)) ((c def c (c (? . 0) q translate)) q (1692 . 11)) ((c def c (c (? . 0) q expression-data)) c (? . 5)) ((c def c (c (? . 0) q example->kata)) q (2255 . 4)) ((c def c (c (? . 0) q stimulus-data)) c (? . 3)) ((c def c (c (? . 1) q kata->pict)) q (3802 . 3)) ((c def c (c (? . 0) q kata-response)) c (? . 2)) ((c def c (c (? . 0) q make-kata)) c (q 981 . 5) c (? . 2)) ((c def c (c (? . 0) q recite)) q (1605 . 4)) ((c def c (c (? . 0) q kata-collection-katas)) c (? . 4)) ((c def c (c (? . 1) q num-expressions)) q (2967 . 3)) ((c def c (c (? . 0) q make-stimulus)) c (? . 3)) ((c def c (c (? . 0) q expression)) c (? . 5)) ((c def c (c (? . 0) q response?)) c (? . 6)) ((c def c (c (? . 0) q kata-collection)) c (? . 4)) ((c form c (c (? . 1) q define-sub-collections)) q (3267 . 5)) ((c def c (c (? . 0) q make-response)) c (? . 6)) ((c def c (c (? . 0) q kata-stimulus)) c (? . 2)) ((c def c (c (? . 1) q kata-collection->scribble)) q (3595 . 5)) ((c def c (c (? . 0) q response-data)) c (? . 6))))
syntax
(define-example-code lang example-name expr ...)
procedure
(get-example-code lang example-name) -> string?
  lang : symbol?
  example-name : symbol?
procedure
(get-example-names lang) -> (listof symbol?)
  lang : symbol?
syntax
(define/contract/doc header contract doc body-expr ...)
struct
(struct kata (id stimulus response tests)
    #:extra-constructor-name make-kata)
  id : symbol?
  stimulus : stimulus?
  response : response?
  tests : (listof struct?)
struct
(struct response (data)
    #:extra-constructor-name make-response)
  data : any/c
struct
(struct stimulus (data)
    #:extra-constructor-name make-stimulus)
  data : any/c
struct
(struct kata-collection (katas)
    #:extra-constructor-name make-kata-collection)
  katas : (listof kata?)
struct
(struct expression (lang data)
    #:extra-constructor-name make-expression)
  lang : symbol?
  data : any/c
procedure
(make-kata stim resp [tests]) -> kata?
  stim : stimulus?
  resp : response?
  tests : (listof any/c) = '()
procedure
(read data [#:lang lang]) -> stimulus?
  data : any/c
  lang : symbol? = 'English
procedure
(say d) -> response?
  d : any/c
procedure
(do d) -> response?
  d : any/c
procedure
(set-id id k) -> kata?
  id : symbol?
  k : kata?
procedure
(within [#:minutes minutes      
         #:seconds seconds]     
         k)                 -> kata?
  minutes : number? = #f
  seconds : number? = #f
  k : kata?
procedure
(recite #:in in #:out out) -> kata?
  in : any/c
  out : any/c
procedure
(translate [#:id id]                 
            #:in p                   
           [#:in-lang from-lang]     
            #:out c                  
           [#:out-lang in-lang]) -> kata?
  id : symbol? = 'TODO-id
  p : any/c
  from-lang : symbol? = 'English
  c : any/c
  in-lang : symbol? = 'racket
procedure
(coach k [#:with-materials materials]) -> kata?
  k : kata?
  materials : (listof any/c) = '()
procedure
(kata-id->kata-name id) -> string?
  id : symbol?
procedure
(example->kata lang example-id) -> kata?
  lang : symbol?
  example-id : symbol?
procedure
(lang->kata-collection lang) -> kata-collection?
  lang : symbol?
procedure
(fill-in-stimuli collection fill-ins ...) -> kata-collection?
  collection : kata-collection?
  fill-ins : (or/c symbol? stimulus?)
procedure
(merge-collections a b ...) -> kata-collection?
  a : (or/c kata? kata-collection?)
  b : (or/c kata? kata-collection?)
procedure
(filter-collection predicate? collection) -> kata-collection?
  predicate? : prcedure?
  collection : kata-collection?
procedure
(has-keyword? kw k) -> boolean?
  kw : string?
  k : kata?
procedure
(num-expressions k) -> number?
  k : kata?
procedure
(find-by-id id collection) -> kata?
  id : symbol?
  collection : kata-collection?
procedure
(kata-name k) -> string?
  k : kata?
procedure
(name-contains? k s) -> boolean?
  k : kata?
  s : string?
syntax
(define-sub-collections
  [collection kata-collection?]
  name
  ...)
syntax
(define/provide header body-expr ...)
syntax
(define-kata-collection name kata-or-kata-collection ...)
procedure
(kata->scribble k [#:befores befores]) -> scribble?
  k : kata?
  befores : (listof procedure?) = '()
procedure
(kata-collection->scribble  kc                      
                           [#:befores befores]) -> scribble?
  kc : kata-collection?
  befores : (listof procedure?) = '()
procedure
(kata->pict k) -> pict?
  k : kata?
