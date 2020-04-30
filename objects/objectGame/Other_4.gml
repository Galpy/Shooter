randomize();
xground = 0;
if(room == startRoom){
	audio_play_sound(Lonely_Piano_Loop___defGames, 2, true);
	repeat(room_width/36 + 1)
		{
		xground += 36;
		instance_create_layer(-36 + xground,370, "Instances", objectGround);
		}
xground = 0;
	repeat(10)
		{
		xground += 36;
		instance_create_layer(242 + xground,298, "Instances", objectGround);
		}
}
xground = 0;
if(room == gameRoom){
	audio_stop_sound(Lonely_Piano_Loop___defGames);
	audio_play_sound(snd_Epic_Battle, 2, true);
	repeat(room_width/36 + 1)
		{
		xground += 36;
		instance_create_layer(-36 + xground, 370, "Instances", objectGround);
		}
xground = 0;
var secondLevelGround = choose(random_range(400, 580));
	repeat (choose(random_range(6, 18)))
		{
		xground += 36;
		instance_create_layer(secondLevelGround + xground, 298, "Instances", objectGround);
		}
xground = 0;
secondLevelGround = choose(random_range(680, 1160));
		repeat (choose(random_range(6, 18)))
		{
		xground += 36;
		instance_create_layer(secondLevelGround + xground, 298, "Instances", objectGround);
		}
xground = 0;
secondLevelGround = choose(random_range(1260, 1840));
		repeat (choose(random_range(6, 18)))
		{
		xground += 36;
		instance_create_layer(secondLevelGround + xground, 298, "Instances", objectGround);
		}
xground = 0;
secondLevelGround = choose(random_range(1940, 2420));
		repeat (choose(random_range(6, 18)))
		{
		xground += 36;
		instance_create_layer(secondLevelGround + xground, 298, "Instances", objectGround);
		}
xground = 0;
secondLevelGround = choose(random_range(2520, 3100));
		repeat (choose(random_range(6, 18)))
		{
		xground += 36;
		instance_create_layer(secondLevelGround + xground, 298, "Instances", objectGround);
		}
xground = 0;
secondLevelGround = choose(random_range(3200, 3880));
		repeat (choose(random_range(6, 18)))
		{
		xground += 36;
		instance_create_layer(secondLevelGround + xground, 298, "Instances", objectGround);
		}
xground = 0;
	instance_create_layer(224, 320, "Instances", objectPlayer);
	repeat(4)
		{
		var xx = choose(random_range(400, room_width));
		var yy = 320;
		instance_create_layer(xx, yy, "Instances", objectBasicEnemy);
		}
	
	alarm[0] = 30;
}
xground = 0;
if (room == endRoom){
	audio_stop_sound(snd_Epic_Battle);
	instance_create_layer(224, 320, "Instances", objectPlayer);
	repeat(35){
	xground += 30;
	instance_create_layer(-30 + xground,370, "Instances", objectGround);
	}
}