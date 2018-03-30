/// @description Init
event_inherited();

minimum_period_in_sec = global.game_settings.enemy_minimum_period_in_sec; //global.core_enemy_minimum_period_in_sec;
maximum_period_in_sec = global.game_settings.enemy_maximum_period_in_sec; //core_enemy_maximum_period_in_sec;

event_user(0);

scr_Generate_Entities(obj_Enemy);