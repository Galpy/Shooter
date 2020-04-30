if(room != gameRoom){
	exit;
}
var xx = random_range(0, room_width);
var yy = 320;
instance_create_layer(xx, yy, "Instances", objectBasicEnemy);

alarm[0] = 30;