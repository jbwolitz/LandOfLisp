;; Define global variables BIG
;; and SMALL

(defparameter *small* 1)
(defparameter *big* 100)

;; Define guess-my-number function

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

;; Define smaller and bigger functions
;; Note that setf is a built-in function
;; to change the value of a global variable

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (print "Yeah, I knew it was too high .. just testing you!")
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (print "Yeah, I knew it was too low .. just testing you!")
  (guess-my-number))

;; Define start-over function

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (print "That was fun!  Let's play again.")
  (guess-my-number))