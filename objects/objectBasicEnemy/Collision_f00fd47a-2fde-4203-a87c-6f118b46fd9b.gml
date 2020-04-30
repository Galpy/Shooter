instance_destroy();
repeat(3){
	instance_create_layer(x,y,"Instances",objectBlood);
	}
with(other){
	instance_create_layer(x, y,"Instances", objectPlayer);
	repeat(3){
		instance_create_layer(x,y,"Instances",objectBlood);
	}
}