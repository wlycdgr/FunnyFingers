/// @description Load sprites & set their framerates
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
ach_icon_frames = ini_read_real("frame_count", "ach_icon", 1);

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
ach_icon_framerate = ini_read_real("framerates", "ach_icon", 16);
ini_close();


nyu_incubator_logo_sprite = sprite_add("nyu_incubator_logo.jpg", 1, false, false, 0, 0);

title_sprite = sprite_add("spr_funny_fingers.png", 1, false, false, 0, 0);

column_sprite = sprite_add("Gameplay/column_48x512.png", column_frames, false, false, 0, 0);
funny_finger_sprite = sprite_add("Gameplay/funny_finger_32x512.png", funny_finger_frames, false, false, 0, 0);
energy_sprite = sprite_add("Gameplay/energy_32x32.png", energy_frames, false, false, 0, 0);
enemy_sprite = sprite_add("Gameplay/enemy_32x32.png", enemy_frames, false, false, 0, 0);
danger_danger_sprite = sprite_add("Gameplay/danger_danger_32x512.png", danger_danger_frames, false, false, 0, 0);

// ribbon menu header sprites
ribbon_menu_header_game_over_sprite = sprite_add("RibbonMenuHeaders/spr_game_over.png", 1, false, false, 0, 0);

// menu item sprites
menu_item_label_achievements_sprite = sprite_add("MenuItemLabels/spr_achievements.png", 1, false, false, 0, 0);
menu_item_label_high_scores_sprite = sprite_add("MenuItemLabels/spr_high_scores.png", 1, false, false, 0, 0);
menu_item_label_cashout_sprite = sprite_add("MenuItemLabels/spr_cashout.png", 1, false, false, 0, 0);
menu_item_label_play_sprite = sprite_add("MenuItemLabels/spr_play.png", 1, false, false, 0, 0);
menu_item_label_try_again_sprite = sprite_add("MenuItemLabels/spr_try_again.png", 1, false, false, 0, 0);
menu_item_label_continue_sprite = sprite_add("MenuItemLabels/spr_continue.png", 1, false, false, 0, 0);
menu_item_label_main_menu_sprite = sprite_add("MenuItemLabels/spr_main_menu.png", 1, false, false, 0, 0);


sprite_set_speed(column_sprite, column_framerate, spritespeed_framespersecond);
sprite_set_speed(funny_finger_sprite, funny_finger_framerate, spritespeed_framespersecond);
sprite_set_speed(energy_sprite, energy_framerate, spritespeed_framespersecond);
sprite_set_speed(enemy_sprite, enemy_framerate, spritespeed_framespersecond);
sprite_set_speed(danger_danger_sprite, danger_danger_framerate, spritespeed_framespersecond);
