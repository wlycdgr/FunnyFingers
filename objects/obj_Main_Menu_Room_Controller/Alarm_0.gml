/// @description Insert description here
// You can write your code in this editor
target_size = funny_size + random_range(0.2, 0.6);

twitch_up_per_frame = (target_size - funny_size) * random_range(0.06, 0.2);
twitch_down_per_frame = twitch_up_per_frame * 2;

twitching_up = true;
twitching_down = false;