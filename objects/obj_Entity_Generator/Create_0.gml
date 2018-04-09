/// @description Init
entity_pool_size = 10; // TODO figure out how many I actually need
entities = array_create(entity_pool_size); // TODO figure out how many I actually need

playfield = -1;

counter_in_sec = 0;
minimum_period_in_sec = 0;
maximum_period_in_sec = 0;
current_period_in_sec = 0;

frame_time_in_sec = 1.0 / game_fps;