right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

space = keyboard_check_pressed(vk_space);

if left {
    current_angle += turn_speed;
}
if right {
    current_angle -= turn_speed;
}

if current_angle > max_angle {
    current_angle -= max_angle;
}

if current_angle < 1 {
    current_angle += max_angle;
}

if space && flash_cd <= 0{
	flash_cd = 60;
	instance_create_depth(x,y,depth,o_flash);
	x += lengthdir_x(flash_strength, (current_angle - 1) * angle_size - 85);
	y += lengthdir_y(flash_strength, (current_angle - 1) * angle_size - 85);
}

if flash_cd > 0 {
	flash_cd --;	
}

if up {
    current_walk_frame+=walk_animation_speed;
    x += lengthdir_x(walk_speed, (current_angle - 1) * angle_size - 85);
    y += lengthdir_y(walk_speed, (current_angle - 1) * angle_size - 85);
}
if down {
    current_walk_frame-=walk_animation_speed;
    x -= lengthdir_x(walk_speed, current_angle * angle_size - 85);
    y -= lengthdir_y(walk_speed, current_angle * angle_size - 85);
}

if current_walk_frame > max_walk_frame {
    current_walk_frame -= max_walk_frame;
}

if current_walk_frame < 1 {
    current_walk_frame += max_walk_frame;
}

sprite_index = asset_get_index("s_player_angle_" + string(round(current_angle)));
image_index = current_walk_frame;


if place_meeting(x,y,o_magic_ball){
	game_restart();	
}