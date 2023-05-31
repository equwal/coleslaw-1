(in-package :coleslaw)
(defparameter *site-folder-local* "/home/jose/equwal.com/site")

(defun truex ()
  (main *site-folder-local*))

#|(in-package :coleslaw-cl-who)
(defun pack (el list?)
(if (and (listp list?) (listp (car list?)))
(cons el list?)
(list el list?)))
(defmacro lst (orderliness &rest elements)
``(,',orderliness ,@(mapcar (lambda (x) (pack :li x)) ',elements)))|#
