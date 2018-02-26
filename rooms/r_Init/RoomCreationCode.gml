script_execute(scr_MACROS_and_GLOBALS);

global.sprites_and_fonts = instance_create_layer(0, 0, "Instances", obj_Sprite_Loader);
global.navigator = instance_create_layer(0, 0, "Instances", obj_Navigator);
global.tweaker = instance_create_layer(0, 0, "Instances", obj_Tweaker);
global.fader = instance_create_layer(0, 0, "Fader", obj_Fader);