/// @param {integer} menu The id of the menu 
if (argument0.select) {
	scr_Sound_Play(sfx_select_menu);
	
	argument0.active = false;
	return true;
}

return false;