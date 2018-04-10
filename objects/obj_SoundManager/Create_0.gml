/// @description Load the sounds
off = false;
sound_on_off_string = "ON";

move_and_reach_maximum_multiplier = audio_create_stream("move_and_reach_maximum_multiplier.ogg");
scroll_menu = audio_create_stream("scroll_menu.ogg");
crash_into_enemy_and_lose_armor = audio_create_stream("crash_into_enemy_and_lose_armor.ogg");
lose_multiplier = audio_create_stream("lose_multiplier.ogg");
move_and_increase_multiplier = audio_create_stream("move_and_increase_multiplier.ogg");
select_menu = audio_create_stream("select_menu.ogg");
eat_energy = audio_create_stream("eat_energy.ogg");
crash_into_enemy_and_DIE = audio_create_stream("crash_into_enemy_and_DIE.ogg");
run_out_of_energy_and_DIE = audio_create_stream("run_out_of_energy_and_DIE.ogg");
slide_out = audio_create_stream("slide_out.ogg");
achieve_high_score = audio_create_stream("achieve_high_score.ogg");

sfx = [
	move_and_reach_maximum_multiplier,
	scroll_menu,
	crash_into_enemy_and_lose_armor,
	lose_multiplier,
	move_and_increase_multiplier,
	select_menu,
	eat_energy,
	crash_into_enemy_and_DIE,
	run_out_of_energy_and_DIE,
	slide_out,
	achieve_high_score,
];


audio_sound_gain(snd_fx_MoveAndIncreaseMultiplier, 0.2, 0);