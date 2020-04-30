if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case startRoom:
		room_goto(gameRoom);
		break;
		
		case endRoom:
		room_goto_next();
		break;
		
		case deathRoom:
		game_restart();
		break;
		
	}
}

if(room = gameRoom){
	if(score >= 2000){
		room_goto(endRoom);
		instance_create_layer(224, 320, "Instances", objectPlayer);
	}
	if (lives <= 0){
		room_goto(deathRoom);
		audio_stop_sound(snd_Epic_Battle);
		instance_create_layer(224, 320, "Instances", objectPlayer);
	}
}