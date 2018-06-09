#!/bin/bash
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 0
angles: [0,0,0,0]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 1
angles: [0,0,0,0]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 2
angles: [0,0,0,0]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 3
angles: [0,0,0,0]" & 
rostopic pub /roboy/roboy/middleware/FingerCommand roboy_communication_middleware/FingerCommand "id: 0
finger: 4
angles: [0,0,0,0]" & 

