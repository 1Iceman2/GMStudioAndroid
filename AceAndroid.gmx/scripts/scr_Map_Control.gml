//map control
global.delta=60/1000000*delta_time
if global.xspeed<6 global.xspeed+=.0001
var tex=1
repeat(global.map_tex)
{background_hspeed[tex-1]=-global.xspeed*global.delta
tex++}

//spawn masks
if timer>0
timer-=global.delta
else 
{timer=choose(30,45,60,90)/global.xspeed
scr_Map_Spawn(timer)}
