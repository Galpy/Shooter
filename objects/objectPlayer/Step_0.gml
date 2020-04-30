// Initalize keyboard presses
var akey = keyboard_check(ord("A"));
var dkey = keyboard_check(ord("D"));

image_speed = 0;
sprite_index = spritePlayer;

//Check for ground
if (place_meeting(x, y+1, objectGround))
{
	vspd = 0;
	// Jumping
if (keyboard_check_pressed(vk_space))
{
	vspd = -jspd;
	}
}


else 
{
	// Gravity
	if (vspd < 10) 
	{
	vspd += grav;
	}
}
if (place_meeting(x + 1, y, objectGround))
{
	hspd = 0;
}
//Left movement with animation flipping
if (akey)
	{
		image_angle = 180;
		image_yscale = -1
		image_xscale = 1;
		hspd = -spd;
		image_speed = 1;
	}
//Right movement with animation flipping
if (dkey)
	{
		image_angle = 0;
		image_yscale = 1;
		image_xscale = 1;
		hspd = spd;
		image_speed = 1;
	}
//No movment
if (!akey && !dkey || akey && dkey){
	{
		hspd = 0;
		image_speed = 0;
		image_index = 2;
	}
}
//Horizontal collisions
if (place_meeting(x+hspd, y-1, objectGround))
{
	while (!place_meeting(x+sign(hspd), y-1, objectGround))
	{
		x+= sign(hspd);
	}
	hspd = 0;
}
if ((!place_meeting(x, y + sign(vspd), objectGround)) && (akey || dkey))
{
	y += sign(vspd);
}

//Move horizontally
x += hspd;
//Vertical collisions
if (place_meeting(x, y + vspd, objectGround))
{
	while (!place_meeting(x, y + sign(vspd), objectGround))
	{
		y += sign(vspd);
	}
	vspd = 0;
}

//Move vertically
y += vspd;
//Shoot function
if (mouse_check_button_pressed(mb_left))
{
	sprite_index = spritePlayerShooting;
	var inst = instance_create_layer(x, y+5, "Instances", objectBullet);
	inst.direction = image_angle;
}
//Reset image after shooting
if (mouse_check_button_released(mb_left))
{
	image_index = 2;
}
	
	move_wrap(true, true, sprite_width/2);
	
// Keep player inside map
if (x <= 10) x = 10;
if (x>= room_width - 10) x = room_width - 10;