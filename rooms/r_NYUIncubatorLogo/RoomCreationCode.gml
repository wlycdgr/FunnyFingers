randomise();

script_execute(scr_MACROS_and_GLOBALS);
script_execute(scr_Splitsfont_Reset_DefaultTweaks);

global.sound = instance_create_layer(0, 0, "Instances", obj_SoundManager);
global.steam = instance_create_layer(0, 0, "Fader", obj_Steam_Liason);
global.splitsfont = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont);
global.escaper = instance_create_layer(0, 0, "Instances", obj_Escaper);
global.game_settings = instance_create_layer(0, 0, "Instances", obj_Game_Settings);
global.room_state_tracker = instance_create_layer(0, 0, "Instances", obj_Room_State_Tracker);

instance_create_layer(340, 90, "Instances", obj_NYU_Incubator_Logo_Room_Controller);