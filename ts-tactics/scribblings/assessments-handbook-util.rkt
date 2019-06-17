#lang racket 

(provide 
  Coder
  Communicator
  Collaborator
  Leader
  Teacher
  Architect

  Coders
  Communicators
  Collaborators
  Leaders
  Teachers
  Architects

  coding
  communication
  collaboration
  leadership
  teaching
  architecture

  coder-definition 
  communicator-definition
  collaborator-definition
  
  leader-definition 
  teacher-definition
  architect-definition
  
  level-1
  level-2
  level-3
  level-4
  level-5
  
  Novice
  Advanced-Beginner
  Competent
  Proficient
  Expert
  Expertise
  Parameterized-Expertise
  )

(require scribble/base)

(define Novice                    (bold "Novice"))
(define Advanced-Beginner         (bold "Advanced Beginner"))
(define Competent                 (bold "Competent"))
(define Proficient                (bold "Proficient"))
(define Expert                    (bold "Expert"))
(define Expertise                 (bold "Expertise"))
(define Parameterized-Expertise   (bold "Parameterized Expertise"))

(define level-1 (bold "1 (\"Novice\")"))
(define level-2 (bold "2 (\"Advanced Beginner\")"))
(define level-3 (bold "3 (\"Competent\")"))
(define level-4 (bold "4 (\"Proficient\")"))
(define level-5 (bold "5 (\"Expert\")"))

(define Coder         (bold "Coder"))
(define Communicator  (bold "Communicator"))
(define Collaborator  (bold "Collaborator"))
(define Leader        (bold "Leader"))
(define Teacher       (bold "Teacher"))
(define Architect     (bold "Architect"))

(define Coders        (bold "Coders"))
(define Communicators (bold "Communicators"))
(define Collaborators (bold "Collaborators"))
(define Leaders       (bold "Leaders"))
(define Teachers      (bold "Teachers"))
(define Architects    (bold "Architects"))

(define coding        (bold "coding"))
(define communication (bold "communication"))
(define collaboration (bold "collaboration"))
(define leadership    (bold "leadership"))
(define teaching      (bold "teacher"))
(define architecture  (bold "architecture"))

(define (coder-definition)
  (list
    Coders
    " are skilled at writing code -- specifically with regard to translating from high-level specifications into code (called the \"implementation\").  Usually, that means translating from English to code.  Modern coders have mastery over many languages, and many families of languages: from general purpose languages to domain specific languages.  They are also skilled at learning new languages and they embrace the challenge of adopting and mastering new technologies, thriving in a world whose software ecosystems are in constant flux -- where the lightning-fast release of disruptive technologies is the norm, not the exception."))

(define (communicator-definition)
              (list
                Communicators
                " are " Coders 
                " who are skilled at communicating with and about code, both with coders and non-coders.  This includes one's ability to communicate visually, verbally, in writing -- i.e. drawing high-level \"whiteboard\" diagrams of code, producing visual communication aids, speaking articulately about code and its specifications, using appropriate technical vocabulary (when necessary), and avoiding technical vocabluary (when necessary), and verbally explaining one's thought process while writing and maintaining software.  Increasingly, in the 21st century, there is a new word for coders who cannot communicate.  The word is: \"unemployed\"."))

(define (collaborator-definition)
  (list
    Collaborators
    " are " Coders " who are also " Communicators
    " who have mastered additional skills, allowing them to work in teams with other " Coder "/" Communicators ". "
    "They know how to distribute work equally and fairly amongst team members, take direction, self-organize, and finish projects in a timely manner without over- or under- working any member of the team.  They understand how to collaboratively build systems of tremendous complexity, while maintaining a unity of vision amongst fellow developers.  They understand how to work together with coders who know more than them and also with coders who know less than them.  They understand how to be effective in teams whose members have diverse skillsets.  They understand themselves, others, and software design well enough to enhance any team they are a part of."))



(define (leader-definition)
  (list
    Leaders
    " are " Coders " who are also masterful " Communicators " and " Collaborators
    ", who have additionally learned how to master the art of leading teams of other " Coders ".  They know how to distribute work appropriately to others, understand the strengths and weaknesses of other team members, know how to communicate effectively and authoritatively, can resolve conflicts, and effortlessly maintain a positive, high-energy working environment.  They can communicate both about code that already exists, as well as about the long-term vision for code that has not yet been written."))



(define (teacher-definition)
  (list
    Teachers
    " are " Coders " who have are also excellent " Communicators ", " Collaborators ", and " Leaders ", but have also mastered an ability to make others into " Coders ", " Communicators ", " Collaborators ", and " Leaders "."
    " This requires an ability to explain how code works, tactfully identify the strengths and weaknesses in other people's skillsets, nurture people's strengths, improve people's weaknesses, inspire others to want to improve, explain verbally and visually how to use code they've written, explain verbally and visually how to use code that they haven't written.  To teach, one must be able to lead -- but the difference between " Leader " and " Teacher " is: A leader can lead a team that is already full of skilled " Collaborators "; a teacher knows how to make team members into skilled " Collaborators ", and even to train new " Leaders "."))


(define (architect-definition)
  (list
    Architects
    " are expert " Coders ", " Communicators ", " Collaborators ", " Leaders ", and " Teachers ".  However, they match these skills with tremendous creativity, vision, design skills, and passion for creating large, complex systems that solve problems that have not been solved before.  This requires an ability to design and build large systems over a long period of time, often while working with more than one team of coders.  It includes being able to build systems that help real people, to convince those people that your system can help them, and to teach them how to use your system.  Above all, it requires writing clear, concise, and complete documentation of software systems for various stakeholders.  Architects must so thoroughly undrstand the implementation process that they can clearly articulate both what the system will do when complete, as well as how to build it.  These are the " Coders " who have learned how to maximize their impact upon the world, by maximizing the impacts of everyone around them."))






