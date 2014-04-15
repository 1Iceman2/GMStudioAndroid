//map init
global.xspeed=1
global.delta=1
global.game_state=1
global.map_number=1
if global.map_number=1
{//map 1
global.map_tex=2
global.tex_map[1]=bac_Map_1_1
global.tex_map[2]=bac_Map_1_2}

//set backgrounds
var tex=1
repeat(global.map_tex)
{background_index[tex-1]=global.tex_map[tex]
tex++}
