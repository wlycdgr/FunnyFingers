/// @description Load sprites!
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
ini_close();

column_sprite = sprite_add("column_48x512.png", column_frames, false, false, 0, 0);
funny_finger_sprite = sprite_add("funny_finger_32x512.png", funny_finger_frames, false, false, 0, 0);
energy_sprite = sprite_add("energy_32x32.png", energy_frames, false, false, 0, 0);
enemy_sprite = sprite_add("enemy_32x32.png", enemy_frames, false, false, 0, 0);
bottom_mask_sprite = sprite_add("bottom_336x104.png", bottom_mask_frames, false, false, 0, 0);
top_mask_sprite = sprite_add("top_336x104.png", top_mask_frames, false, false, 0, 0);
left_side_sprite = sprite_add("left_472x720.png", left_side_frames, false, false, 0, 0);
right_side_sprite = sprite_add("right_472x720.png", right_side_frames, false, false, 0, 0);