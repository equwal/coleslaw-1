(defpackage :coleslaw-eial
  (:use :cl)
  (:export #:enable))

(in-package :coleslaw-eial)

;; TODO: configure the chars
;; TODO: maybe use stumpwm's manual.lisp code for this
;; TODO: maybe three chars at the start of a line is better, that's what
;; stumpwm does.
(defmethod render-text (text (format (eql :eial)))
  text)
(defun enable ())
