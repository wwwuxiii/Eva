curr_num_platforms = instance_number(obj_platform);
if (curr_num_platforms < desired_new_platform){
	var spawn_x = random_range(platform_spawn_buffer_wall, room_width-platform_spawn_buffer_wall);
	var spawn_y = random_range(platform_spawn_buffer_ceiling, room_height-platform_spawn_buffer_ground);
	
	var new_platform = instance_create_layer(spawn_x, spawn_y, "Instances", obj_platform);
	
	with (new_platform){
		var tries = 0;
		while(collision_rectangle(x-64, y-32, x+64, y+32, obj_platform, false, true)!= noone && tries < 9999){
			x = random_range(32, room_width-32);
			y = random_range(64, room_height-64);
			tries++;
		}
	}
	
	curr_num_platforms++;
}