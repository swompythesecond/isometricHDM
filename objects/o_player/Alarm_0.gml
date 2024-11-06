
var side = irandom(3);
var spawn_x, spawn_y;

switch (side) {
    case 0: 
        spawn_x = 0;
        spawn_y = irandom(room_height);
        break;
        
    case 1:
        spawn_x = room_width;
        spawn_y = irandom(room_height);
        break;
        
    case 2: 
        spawn_x = irandom(room_width);
        spawn_y =0;
        break;
        
    case 3: 
        spawn_x = irandom(room_width);
        spawn_y = room_height;
        break;
}

instance_create_depth(spawn_x, spawn_y, 5, o_magic_ball);

alarm [0] = 60;










