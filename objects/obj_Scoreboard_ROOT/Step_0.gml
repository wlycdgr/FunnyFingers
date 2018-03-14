/// @description Incr frames, handle reaching of score thresholds
if (global.steam_overlay_activated) exit;

if (gs_playing == global.game.state) {
	if (target_points > points) {
		points += score_grow_to_target_per_frame;
	}
}