G21        ; metric is good!
G90        ; absolute positioning
T0         ; select new extruder
M104 S240  ; Set Extruder TEMPERATURE and GO
M140 S100  ; Set Bed Temperature and GO
M116       ; Wait for all temperatures and other slowly-changing variables to arrive at their set values.
G92 E0     ; zero the extruded length
G1 Z8 F90  ; clear the bolt heads
G28 Y0     ; go home Move to Origin
G28 X0     ; go home Move to Origin
G1 X135 F3000 ; FAST MOVE TO X=135mm
G28 Z0     ; go home Move to Origin
G92 Z0     ; Adjust Z height for optimum 1st layer adhesion ?!?
G1 Z8 F90  ; lift Z=8mm for heating up
M109 S240  ; Set Extruder TEMPERATURE and Wait
M113 S0.75 ; Set Extruder PWM ?!?
G1 Z0.2 F90
G1 X0 E6 F1500  ; wipe extruder with slight extrusion (was E8)
G92 E0          ; zero the extruded length
G1 X30 Y30 Z0   ; TRANSLATE ORIGIN TO (30,30) <<< remove for big plates ?
G92 X0          ; set x 0
G92 Y0          ; set y 0
;G92 Z0         ; do not set z 0
