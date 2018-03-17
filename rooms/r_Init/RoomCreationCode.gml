script_execute(scr_MACROS_and_GLOBALS);

global.splitsfont = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont);
global.navigator = instance_create_layer(0, 0, "Instances", obj_Navigator);
global.tweaker = instance_create_layer(0, 0, "Instances", obj_Tweaker);
global.game_settings = instance_create_layer(0, 0, "Instances", obj_Game_Settings);
global.steam = instance_create_layer(0, 0, "Instances", obj_Steam_Liason);
global.fader = instance_create_layer(0, 0, "Fader", obj_Fader);

global.room_state_tracker = instance_create_layer(0, 0, "Instances", obj_Room_State_Tracker);