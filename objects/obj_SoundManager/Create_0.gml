/// @description Load the sounds
crash_into_enemy_and_lose_armor = audio_create_stream("crash_into_enemy_and_lose_armor.ogg");
achieve_high_score = audio_create_stream("achieve_high_score.ogg");
crash_into_enemy_and_DIE = audio_create_stream("crash_into_enemy_and_DIE.ogg");
eat_energy = audio_create_stream("eat_energy.ogg");
lose_multiplier = audio_create_stream("lose_multiplier.ogg");
slide_in = audio_create_stream("slide_in.ogg");
slide_out = audio_create_stream("slide_out.ogg");
scroll_menu = audio_create_stream("scroll_menu.ogg");
select_menu = audio_create_stream("select_menu.ogg");
run_out_of_energy_and_DIE = audio_create_stream("run_out_of_energy_and_DIE.ogg");
move_and_increase_multiplier = audio_create_stream("move_and_increase_multiplier.ogg");
move_and_reach_maximum_multiplier = audio_create_stream("move_and_reach_maximum_multiplier.ogg");

sfx = [
	crash_into_enemy_and_lose_armor,
	achieve_high_score,
	crash_into_enemy_and_DIE,
	eat_energy,
	lose_multiplier,
	slide_in,
	slide_out,
	scroll_menu,
	select_menu,
	run_out_of_energy_and_DIE,
	move_and_increase_multiplier,
	move_and_reach_maximum_multiplier
];

//audio_play_sound(move_and_reach_maximum_multiplier, 1, true);

// how to set volume - we should load from INI file
audio_sound_gain(lose_multiplier, 1, 0);