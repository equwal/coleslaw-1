(in-package #:asdf-user)

(defsystem #:coleslaw-test
  :description "A test suite for coleslaw."
  :license "BSD"
  :author "Brit Butler <redline6561@gmail.com>"
  :depends-on (:coleslaw :coleslaw-cli :prove)
  :defsystem-depends-on (:prove-asdf)
  :components ((:module "tests"
                :components
<<<<<<< HEAD
                ((:test-file "tests"))))
=======
                ((:test-file "tests")
                 (:test-file "cli"))))
>>>>>>> origin/master
  :perform (test-op :after (op c)
                    (uiop:symbol-call :prove 'run c)))
