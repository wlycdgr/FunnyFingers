/// @description Init
event_inherited();

minimum_period_in_sec = global.core_energy_minimum_period_in_sec;
maximum_period_in_sec = global.core_energy_maximum_period_in_sec;

event_user(0);

scr_Generate_Entities(obj_Energy);