script_execute(scr_MACROS_and_GLOBALS);

global.sprites_and_fonts = instance_create_layer(0, 0, "Instances", obj_Sprite_Loader);
global.navigator = instance_create_layer(0, 0, "Instances", obj_Navigator);
global.tweaker = instance_create_layer(0, 0, "Instances", obj_Tweaker);
global.game_settings = instance_create_layer(0, 0, "Instances", obj_Game_Settings);
global.steam = instance_create_layer(0, 0, "Instances", obj_Steam_Liason);
global.splitsfont = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont);
global.fader = instance_create_layer(0, 0, "Fader", obj_Fader);

var splitsfont_test = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);