/// @description Load sprites & set their framerates
// You can write your code in this editor
var achievement_count = 2;

ini_open("sprite_settings.ini");
logo_frames = ini_read_real("frame_counts", "logo", 1);
title_frames = ini_read_real("frame_counts", "title", 1);
column_frames = ini_read_real("frame_counts", "column", 1);
funny_finger_frames = ini_read_real("frame_counts", "funny_finger", 1);
energy_frames = ini_read_real("frame_counts", "energy", 1);
enemy_frames = ini_read_real("frame_counts", "enemy", 1);
bottom_mask_frames = ini_read_real("frame_counts", "bottom", 1);
top_mask_frames = ini_read_real("frame_counts", "top", 1);
left_side_frames = ini_read_real("frame_counts", "left", 1);
right_side_frames = ini_read_real("frame_counts", "right", 1);
danger_danger_frames = ini_read_real("frame_count", "danger_danger", 1);

logo_framerate = ini_read_real("framerates", "logo", 16);
title_framerate = ini_read_real("framerates", "title", 16);
column_framerate = ini_read_real("framerates", "column", 16);
funny_finger_framerate = ini_read_real("framerates", "funny_finger", 16);
enemy_framerate = ini_read_real("framerates", "enemy", 16);
energy_framerate = ini_read_real("framerates", "energy", 16);
bottom_framerate = ini_read_real("framerates", "bottom", 16);
top_framerate = ini_read_real("framerates", "top", 16);
left_framerate = ini_read_real("framerates", "left", 16);
right_framerate = ini_read_real("framerates", "right", 16);
danger_danger_framerate = ini_read_real("framerates", "right", 16);

for (var i = 0; i < achievement_count; i++) {
	ach_framess[i] = ini_read_real("frame_count", "ach_" + string(i), 1);
	ach_framerates[i] = ini_read_real("framerates", "ach_" + string(i), 16);
}
ini_close();


nyu_incubator_logo_sprite = sprite_add("nyu_incubator_logo.jpg", 1, false, false, 0, 0);
logo_sprite = sprite_add("logo_600x540.png", 1, false, false, 0, 0);
title_sprite = sprite_add("title_800x300.png", 1, false, false, 0, 0);
column_sprite = sprite_add("column_48x512.png", column_frames, false, false, 0, 0);
funny_finger_sprite = sprite_add("funny_finger_32x512.png", funny_finger_frames, false, false, 0, 0);
energy_sprite = sprite_add("energy_32x32.png", energy_frames, false, false, 0, 0);
enemy_sprite = sprite_add("enemy_32x32.png", enemy_frames, false, false, 0, 0);
bottom_mask_sprite = sprite_add("bottom_336x104.png", bottom_mask_frames, false, false, 0, 0);
top_mask_sprite = sprite_add("top_336x104.png", top_mask_frames, false, false, 0, 0);
left_side_sprite = sprite_add("left_472x720.png", left_side_frames, false, false, 0, 0);
right_side_sprite = sprite_add("right_472x720.png", right_side_frames, false, false, 0, 0);
danger_danger_sprite = sprite_add("danger_danger_32x512.png", danger_danger_frames, false, false, 0, 0);


sprite_set_speed(column_sprite, column_framerate, spritespeed_framespersecond);
sprite_set_speed(funny_finger_sprite, funny_finger_framerate, spritespeed_framespersecond);
sprite_set_speed(energy_sprite, energy_framerate, spritespeed_framespersecond);
sprite_set_speed(enemy_sprite, enemy_framerate, spritespeed_framespersecond);
sprite_set_speed(bottom_mask_sprite, bottom_framerate, spritespeed_framespersecond);
sprite_set_speed(top_mask_sprite, top_framerate, spritespeed_framespersecond);
sprite_set_speed(left_side_sprite, left_framerate, spritespeed_framespersecond);
sprite_set_speed(right_side_sprite, right_framerate, spritespeed_framespersecond);
sprite_set_speed(danger_danger_sprite, danger_danger_framerate, spritespeed_framespersecond);


var filename = "";
for (var i = 0; i < achievement_count; i++) {
	filename = "ach_" + string(i) + "_64x64.jpg";
	ach_sprites[i] = sprite_add(filename, ach_framess[i], false, false, 0, 0);	
	sprite_set_speed(ach_sprites[i], ach_framerates[i], spritespeed_framespersecond);
}


event_user(0); // LOAD FONT