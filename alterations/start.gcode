G21 ;metric is good!
G90 ;absolute positioning
T0; select new extruder
M104 S240; set temperature
M140 S140
M116
G92 E0 ;zero the extruded length
G1 Z8 F90 ;clear the bolt heads
G28 Y0 ;go home
G28 X0
G1 X135 F3000
G28 Z0
G92 Z0 ;Adjust Z height for optimum 1st layer adhesion
G1 Z8 F90
M109 S230
M113 S0.75
G1 Z0.2 F90
G1 X10 E8 F1500
;G1 E150 F12000 
G92 E0
G1 X30.0 Y30.0 Z0
G92 X0 ;set x 0
G92 Y0 ;set y 0
;G92 Z0 ;set z 0
