//map spawn
//timer=choose(30,45,60,90)
if argument0<60
{var shiftx=64, shifty=-64; mask=0
repeat(floor(argument0/5))
{mask=instance_create(room_width+shiftx,room_height+shifty,obj_Map_Mask)
mask.xspeed=global.xspeed; mask.yspeed=0
shiftx+=choose(32,64)
shifty=choose(0,32,64,160)}}
else
{shiftx=32; shifty=-64
mask=instance_create(room_width+shiftx,room_height+shifty,obj_Enemy_Mask)}
