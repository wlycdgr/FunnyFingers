/// @param {integer} menu The id of the menu 
if (argument0.select) {
	scr_Play_SFX(snd_fx_MenuSelect);
	
	argument0.active = false;
	
	return true;
}

return false;