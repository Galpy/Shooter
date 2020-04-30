score += 10;
instance_destroy();

with(other) {
	instance_destroy();
	repeat(8){
	instance_create_layer(x,y,"Instances",objectBlood);
	}
}
