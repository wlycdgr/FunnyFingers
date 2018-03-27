randomise();

script_execute(scr_MACROS_and_GLOBALS);

global.store_version = store_version_steam;

if (store_version_itch == global.store_version) {
	global.itch = instance_create_layer(0, 0, "Instances", obj_Itch_Liason);
	global.steam_overlay_activated = false;
}
else if (store_version_steam == global.store_version) {
	global.steam = instance_create_layer(0, 0, "Instances", obj_Steam_Liason);
}


global.splitsfont = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont);
global.navigator = instance_create_layer(0, 0, "Instances", obj_Navigator);
global.tweaker = instance_create_layer(0, 0, "Instances", obj_Tweaker);
global.game_settings = instance_create_layer(0, 0, "Instances", obj_Game_Settings);
global.fader = instance_create_layer(0, 0, "Fader", obj_Fader);

global.room_state_tracker = instance_create_layer(0, 0, "Instances", obj_Room_State_Tracker);
