//map control
global.delta=60/1000000*delta_time
global.movespd=scr_Value_Limit(global.movespd+.001*global.delta,1,5)
global.xspeed=lengthdir_x(global.movespd,global.movedir)
global.yspeed=lengthdir_y(global.movespd,global.movedir)
var tex=1
repeat(global.map_tex)
{background_hspeed[tex-1]=-global.xspeed*global.delta
background_vspeed[tex-1]=-global.yspeed*global.delta
tex++}

//spawn masks
if timer>0
timer-=global.delta
else 
{timer=choose(60,120,240)/scr_Value_Limit(global.movespd,1,2)
scr_Map_Spawn(timer)}
