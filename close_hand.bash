#!/bin/bash
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 0
angles: [-100,0,100,70]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 1
angles: [-100,0,100,70]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 2
angles: [-100,0,100,70]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 3
angles: [-100,0,100,70]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 4
angles: [-100,0,100,70]" & 

