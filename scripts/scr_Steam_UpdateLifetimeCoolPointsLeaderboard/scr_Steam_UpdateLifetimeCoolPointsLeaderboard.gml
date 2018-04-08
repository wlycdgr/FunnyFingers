/// @function scr_ASI_UpdateLifetimeCoolPointsLeaderboard(value_to_add)

var old_value = steam_get_stat_int("stat_lifetime_cool_points");
	
var new_lifetime_cool_points_value = old_value + argument0;
	
steam_set_stat_int(
	"stat_lifetime_cool_points",
	new_lifetime_cool_points_value
);
	
steam_upload_score(
	steam_leaderboard_cool,
	new_lifetime_cool_points_value
);
	
return new_lifetime_cool_points_value;
