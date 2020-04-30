if (room = startRoom)
{
	draw_set_halign(fa_center);
	var c = c_fuchsia;
	var b = c_black;
	draw_text_color(100, 60, "Instructions to the right -->", b, b, b, b, 1);
	draw_text_transformed_color(room_width/2, 20, "Shooter", 5, 5, 0, c, c, c, c, 1);
	draw_text_color(room_width/2, 100, @"Complete all levels while trying to get the highest score!

A: move left
D: move right
Space: jump
Left Click: shoot
Careful because you only have one life!

>> PRESS ENTER TO START <<
"
, b, b, b, b, 1
	);
	draw_set_halign(fa_left);
}
if(room == endRoom)
{
	draw_set_halign(fa_center);
	var c = c_fuchsia;
	var b = c_black;
	draw_text_transformed_color(room_width/2, 20, "Chapter Completed!", 4, 4, 0, c, c, c, c, 1);
	draw_text_color(room_width/2, 100, "Current Score: " + string(score), b, b, b, b, 1);
	draw_text_color(room_width/2, 150, "Press Enter to continue to the next chapter of your journey", b, b, b, b, 1);

	draw_set_halign(fa_left);
}
if(room == deathRoom)
{
	draw_set_halign(fa_center);
	var c = c_dkgray;
	var b = c_black;
	draw_text_transformed_color(room_width/2, 20, "GAME OVER", 4, 4, 0, c, c, c, c, 1);
	draw_text_color(room_width/2, 100, "Ended with Score: " + string(score), b, b, b, b, 1);
	draw_text_color(room_width/2, 150, "Better luck next time!", b, b, b, b, 1);
	draw_text_color(room_width/2, 200, "Press Enter to restart", b, b, b, b, 1);
}
else if(room != startRoom && room != endRoom && room != deathRoom)
{
	draw_text(100, 20, "Chapter: " + string(chapter));
	draw_text(100, 0, "Score: " + string(score));
}
