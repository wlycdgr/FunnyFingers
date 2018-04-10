randomise();

script_execute(scr_MACROS_and_GLOBALS);

global.sound = instance_create_layer(0, 0, "Instances", obj_SoundManager);
global.steam = instance_create_layer(0, 0, "Instances", obj_Steam_Liason);
global.splitsfont = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont);
global.escaper = instance_create_layer(0, 0, "Instances", obj_Escaper);
global.game_settings = instance_create_layer(0, 0, "Instances", obj_Game_Settings);

global.room_state_tracker = instance_create_layer(0, 0, "Instances", obj_Room_State_Tracker);

room_goto(r_NYUIncubatorLogo);
