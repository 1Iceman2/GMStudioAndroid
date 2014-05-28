//move
if visible=1
{x-=(xspeed+global.xspeed)*global.delta
y-=(yspeed+global.yspeed)*global.delta

//gravity
xgrav=lengthdir_x(global.grav,global.gravdir)
ygrav=lengthdir_y(global.grav,global.gravdir)
xspeed-=xgrav*global.delta
yspeed-=ygrav*global.delta}
