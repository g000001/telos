;;;; telos.asd

(cl:in-package :asdf) 


(defsystem :telos
  :serial t
  :depends-on (:fiveam)
  :components ((:file "package")
               (:file "telos"))) 


(defmethod perform ((o test-op) (c (eql (find-system :telos))))
  (load-system :telos)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
        (let ((result (funcall (_ :fiveam :run) (_ :root.object.telos.internal
                                                   :telos))))
          (funcall (_ :fiveam :explain!) result)
          (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") )) 


;;; *EOF*
