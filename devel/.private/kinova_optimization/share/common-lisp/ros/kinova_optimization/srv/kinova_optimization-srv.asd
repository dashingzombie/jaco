
(cl:in-package :asdf)

(defsystem "kinova_optimization-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :kinova_optimization-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "IKSolution" :depends-on ("_package_IKSolution"))
    (:file "_package_IKSolution" :depends-on ("_package"))
    (:file "RelaxedIKSolution" :depends-on ("_package_RelaxedIKSolution"))
    (:file "_package_RelaxedIKSolution" :depends-on ("_package"))
    (:file "Reset" :depends-on ("_package_Reset"))
    (:file "_package_Reset" :depends-on ("_package"))
    (:file "SelfCollisionQuery" :depends-on ("_package_SelfCollisionQuery"))
    (:file "_package_SelfCollisionQuery" :depends-on ("_package"))
  ))