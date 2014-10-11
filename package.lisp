;;;; package.lisp

(cl:in-package :cl-user) 


(defpackage :telos
  (:use)
  (:export . (generic-funcall
              make-method
              primitive-ref primitive-class-of primitive-allocate
              class-of subclass? class? slot? function?
              generic-function? method? defgeneric method-function-lambda
              generic-lambda
              method-lambda apply-method-function call-method-function
              defmethod class-name class-instance-length class-direct-superclasses
              class-direct-subclasses class-slots class-keywords
              class-precedence-list generic-function-name generic-function-domain
              generic-function-method-class generic-function-method-keywords
              generic-function-methods generic-function-method-lookup-function
              generic-function-discriminating-function generic-function-cache
              generic-function-rest
              method-generic-function method-domain
              method-function slot-name slot-default
              slot-reader slot-writer slot-keyword slot-required-p
              slot-value-using-slot find-slot
              slot-value make allocate initialize call-next-method
              next-method? apply-method call-method compute-method-lookup-function
              compute-discriminating-function add-method remove-method
              find-method compatible-superclasses-p compatible-superclass-p
              compute-class-precedence-list class-abstract-p
              compute-inherited-keywords
              compute-keywords compute-inherited-slots
              compute-slots compute-specialized-slot
              compute-specialized-slot-class
              compute-defined-slot
              compute-defined-slot-class
              copy-object compute-and-ensure-slot-accessors compute-slot-reader
              compute-slot-writer ensure-slot-reader
              compute-primitive-reader-using-slot
              compute-primitive-reader-using-class
              ensure-slot-writer compute-primitive-writer-using-slot
              compute-primitive-writer-using-class add-subclass defclass
              generic-prin class-hierarchy
              instance-hierarchy 
              describe simple-function find-keyword filter-keywords
              list-all-classes
              <object>
              <class>
              <simple-class>
              <function-class>
              <built-in-class>
              <method>
              <simple-method>
              <slot>
              <local-slot>
              <built-in-object>
              <number>
              <rational>
              <integer>
              <ratio>
              <float>
              <complex>
              <package>
              <readtable>
              <hash-table>
              <random-state>
              <stream>
              <pathname>
              <function>
              <generic-function>
              <simple-generic-function>
              <simple-function>
              <character>
              <symbol>
              <null>
              <array>
              <vector>
              <string>
              <bit-vector>
              <sequence>
              ;                <vector>
              ;                  <string>
              ;                  <bit-vector>
              <list>
              ;                  <null>
              <cons>
              <structure> ))) 


(defpackage :telos.internal
  (:use :telos :cl :fiveam)
  (:shadow :defconstant :eval-when)
  (:shadowing-import-from :telos
   :slot-value :remove-method :make-method :find-method :describe :defmethod
   :defgeneric :defclass :class-of :class-name :call-next-method :call-method
   :add-method
   #+CMU :memq
   #+KCL :allocate)) 


;;; *EOF*
