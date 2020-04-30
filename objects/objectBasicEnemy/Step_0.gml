randomize();
if (place_meeting(x, y+1, objectGround))
{
	vspd = 0;

}
if (place_meeting(x-3,y-1, objectGround)) {
	vspd = -jspd;
	}
if (place_meeting(x+3,y-1, objectGround)) {
	vspd = -jspd;
	}
else 
{
// Gravity
	if (vspd < 10) 
	{
	vspd += grav;
	}
}
if (x > objectPlayer.x + 200) 
{	
	if (place_meeting(x, y-1, objectGround))
	{
		vspd += grav;
		hspd = spd
		image_angle = 0;
		image_yscale = 1;
		image_xscale = 1;
	}
	else
	{
		hspd = -spd;
		image_angle = 180;
		image_yscale = -1;
		image_xscale = 1;
	}
}
if (x < objectPlayer.x - 200)
{
	if (place_meeting(x, y-1, objectGround))
	{
		vspd += grav;
	hspd = -spd;
	image_angle = 180;
	image_yscale = -1;
	image_xscale = 1;
	}
	else
	{
		hspd = spd
		image_angle = 0;
		image_yscale = 1;
		image_xscale = 1;
	}
}

//Horizontal collisions
if (place_meeting(x+sign(hspd),y,objectGround))
{	
while (!place_meeting(x+sign(hspd), y, objectGround))
	{
		x+= sign(hspd);
	}
}
if (!place_meeting(x, y + sign(vspd), objectGround))
{
	y += sign(vspd);
}
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