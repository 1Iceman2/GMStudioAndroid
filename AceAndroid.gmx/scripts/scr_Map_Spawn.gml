//map spawn
if argument0<60
{mask=instance_create(room_width,room_height-64,obj_Map_Mask)
mask.xspeed=global.xspeed; mask.yspeed=global.yspeed}
else
{mask=instance_create(room_width,room_height,obj_Enemy_Mask)}
