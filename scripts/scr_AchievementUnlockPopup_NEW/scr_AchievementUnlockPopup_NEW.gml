/// @function scr_AchievementUnlockPopup_NEW(ach_name)

var unlock_popup = instance_create_layer(window_width, 600, "Splitsfont", obj_AchievementUnlockPopup);

with (unlock_popup) {
	sf_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(sf_string, argument0);
}