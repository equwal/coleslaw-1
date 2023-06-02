(eval-when (:compile-toplevel :load-toplevel)
  (ql:quickload 'cl-who))

(defpackage :coleslaw-cl-who
  (:use #:cl)
  (:export #:enable))

(in-package :coleslaw-cl-who)

(defmethod coleslaw:render-text (text (format (eql :cl-who)))
  (with-input-from-string (s (concatenate 'string
                                          #.(format nil "(cl-who:with-html-output-to-string ()~%")
                                          text
                                          #.(format nil "~%)")))
      (read s)))

(defun enable ()
  )
