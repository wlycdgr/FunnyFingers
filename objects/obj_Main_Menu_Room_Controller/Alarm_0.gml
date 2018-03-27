/// @description Insert description here
// You can write your code in this editor
target_size = funny_size + random_range(0.1, 0.5);
twitch_per_frame = (target_size - funny_size) * random_range(0.04, 0.12);

twitching_up = true;
twitching_down = false;

alarm[0] = irandom_range(180, 600);