
var arg0,arg1,arg2,arg3;
arg0 = argument0;
arg1 = argument1;
arg2 = argument2;
arg3 = argument3;

//---Returning whether the cursor is within the radius---//
if (arg0 == 1)
{
    var mx,my;
    mx = mouse_x;
    my = mouse_y;

    return (point_distance(arg1,arg2,mx,my) < arg3 + 0.1);
}
//---Checking if the Mouse Button has been pressed and the cursor is within the radius---//
if (arg0 == 2)
{
    var mx,my;
    mx = mouse_x;
    my = mouse_y;

    return (point_distance(arg1,arg2,mx,my) < arg3 + 0.1 && mouse_check_button_pressed(mb_left));
}
//---Checking if the Mouse Button has been pressed---//   
if (arg0 == 3)
{
    return (mouse_check_button_pressed(mb_left));
}
//---Return a restrictive co-ordinate---//
if (arg0 div 2 == 2)
{
    var r,rx,ry,mx,my;
    mx = mouse_x;
    my = mouse_y;
    r = Angle_Script(1,arg1,arg2,mx,my);
    rx = Angle_Script(3,r,arg3);
    ry = Angle_Script(4,r,arg3);
    
    if (point_distance(arg1,arg2,mouse_x,mouse_y) > arg3)
    {
        mx = arg1 + rx;
        my = arg2 + ry;
    }        
    if (arg0 == 4)
        return (mx);
    if (arg0 == 5)
        return (my);
}    
//---Checking if the Mouse Button is held down---//   
if (arg0 == 6)
{
    return (mouse_check_button(mb_left));
}
//---Checking if the Mouse Button has been released---//   
if (arg0 == 7)
{
    return (mouse_check_button_released(mb_left));
}

