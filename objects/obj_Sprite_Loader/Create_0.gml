/// @description Load sprites & set their framerates
// You can write your code in this editor
ini_open("sprite_settings.ini");
column_frames = ini_read_real("frame_counts", "column", 1);
funny_finger_frames = ini_read_real("frame_counts", "funny_finger", 1);
energy_frames = ini_read_real("frame_counts", "energy", 1);
enemy_frames = ini_read_real("frame_counts", "enemy", 1);
bottom_mask_frames = ini_read_real("frame_counts", "bottom", 1);
top_mask_frames = ini_read_real("frame_counts", "top", 1);
left_side_frames = ini_read_real("frame_counts", "left", 1);
right_side_frames = ini_read_real("frame_counts", "right", 1);

column_framerate = ini_read_real("framerates", "column", 16);
funny_finger_framerate = ini_read_real("framerates", "funny_finger", 16);
enemy_framerate = ini_read_real("framerates", "enemy", 16);
energy_framerate = ini_read_real("framerates", "energy", 16);
bottom_framerate = ini_read_real("framerates", "bottom", 16);
top_framerate = ini_read_real("framerates", "top", 16);
left_framerate = ini_read_real("framerates", "left", 16);
right_framerate = ini_read_real("framerates", "right", 16);
ini_close();

column_sprite = sprite_add("column_48x512.png", column_frames, false, false, 0, 0);
funny_finger_sprite = sprite_add("funny_finger_32x512.png", funny_finger_frames, false, false, 0, 0);
energy_sprite = sprite_add("energy_32x32.png", energy_frames, false, false, 0, 0);
enemy_sprite = sprite_add("enemy_32x32.png", enemy_frames, false, false, 0, 0);
bottom_mask_sprite = sprite_add("bottom_336x104.png", bottom_mask_frames, false, false, 0, 0);
top_mask_sprite = sprite_add("top_336x104.png", top_mask_frames, false, false, 0, 0);
left_side_sprite = sprite_add("left_472x720.png", left_side_frames, false, false, 0, 0);
right_side_sprite = sprite_add("right_472x720.png", right_side_frames, false, false, 0, 0);

sprite_set_speed(column_sprite, column_framerate, spritespeed_framespersecond);
sprite_set_speed(funny_finger_sprite, funny_finger_framerate, spritespeed_framespersecond);
sprite_set_speed(energy_sprite, energy_framerate, spritespeed_framespersecond);
sprite_set_speed(enemy_sprite, enemy_framerate, spritespeed_framespersecond);
sprite_set_speed(bottom_mask_sprite, bottom_framerate, spritespeed_framespersecond);
sprite_set_speed(top_mask_sprite, top_framerate, spritespeed_framespersecond);
sprite_set_speed(left_side_sprite, left_framerate, spritespeed_framespersecond);
sprite_set_speed(right_side_sprite, right_framerate, spritespeed_framespersecond);

column_sprite_speed = sprite_get_speed(column_sprite);
energy_sprite_speed = sprite_get_speed(energy_sprite);
energy_sprite_speed_type = sprite_get_speed_type(energy_sprite);

