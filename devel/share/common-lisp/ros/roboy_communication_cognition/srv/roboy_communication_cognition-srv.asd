
(cl:in-package :asdf)

(defsystem "roboy_communication_cognition-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AssertProperty" :depends-on ("_package_AssertProperty"))
    (:file "_package_AssertProperty" :depends-on ("_package"))
    (:file "CallQuery" :depends-on ("_package_CallQuery"))
    (:file "_package_CallQuery" :depends-on ("_package"))
    (:file "CheckProperty" :depends-on ("_package_CheckProperty"))
    (:file "_package_CheckProperty" :depends-on ("_package"))
    (:file "CheckQuery" :depends-on ("_package_CheckQuery"))
    (:file "_package_CheckQuery" :depends-on ("_package"))
    (:file "CreateInstance" :depends-on ("_package_CreateInstance"))
    (:file "_package_CreateInstance" :depends-on ("_package"))
    (:file "DataQuery" :depends-on ("_package_DataQuery"))
    (:file "_package_DataQuery" :depends-on ("_package"))
    (:file "DescribeScene" :depends-on ("_package_DescribeScene"))
    (:file "_package_DescribeScene" :depends-on ("_package"))
    (:file "DetectFace" :depends-on ("_package_DetectFace"))
    (:file "_package_DetectFace" :depends-on ("_package"))
    (:file "DetectIntent" :depends-on ("_package_DetectIntent"))
    (:file "_package_DetectIntent" :depends-on ("_package"))
    (:file "EvalSeq2Seq" :depends-on ("_package_EvalSeq2Seq"))
    (:file "_package_EvalSeq2Seq" :depends-on ("_package"))
    (:file "FindInstances" :depends-on ("_package_FindInstances"))
    (:file "_package_FindInstances" :depends-on ("_package"))
    (:file "FindObject" :depends-on ("_package_FindObject"))
    (:file "_package_FindObject" :depends-on ("_package"))
    (:file "GenerateAnswer" :depends-on ("_package_GenerateAnswer"))
    (:file "_package_GenerateAnswer" :depends-on ("_package"))
    (:file "GetObject" :depends-on ("_package_GetObject"))
    (:file "_package_GetObject" :depends-on ("_package"))
    (:file "LookAtSpeaker" :depends-on ("_package_LookAtSpeaker"))
    (:file "_package_LookAtSpeaker" :depends-on ("_package"))
    (:file "QualityOfTone" :depends-on ("_package_QualityOfTone"))
    (:file "_package_QualityOfTone" :depends-on ("_package"))
    (:file "QualityOfTones" :depends-on ("_package_QualityOfTones"))
    (:file "_package_QualityOfTones" :depends-on ("_package"))
    (:file "RecognizeObject" :depends-on ("_package_RecognizeObject"))
    (:file "_package_RecognizeObject" :depends-on ("_package"))
    (:file "RecognizeSpeech" :depends-on ("_package_RecognizeSpeech"))
    (:file "_package_RecognizeSpeech" :depends-on ("_package"))
    (:file "SaveObject" :depends-on ("_package_SaveObject"))
    (:file "_package_SaveObject" :depends-on ("_package"))
    (:file "ShowInstances" :depends-on ("_package_ShowInstances"))
    (:file "_package_ShowInstances" :depends-on ("_package"))
    (:file "ShowProperty" :depends-on ("_package_ShowProperty"))
    (:file "_package_ShowProperty" :depends-on ("_package"))
    (:file "ShowPropertyValue" :depends-on ("_package_ShowPropertyValue"))
    (:file "_package_ShowPropertyValue" :depends-on ("_package"))
    (:file "Talk" :depends-on ("_package_Talk"))
    (:file "_package_Talk" :depends-on ("_package"))
    (:file "TrainSeq2Seq" :depends-on ("_package_TrainSeq2Seq"))
    (:file "_package_TrainSeq2Seq" :depends-on ("_package"))
    (:file "WhichTones" :depends-on ("_package_WhichTones"))
    (:file "_package_WhichTones" :depends-on ("_package"))
  ))