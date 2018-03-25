/// @description Declare vars
close_enough = window_width * 0.01;

slide_proportion_per_frame_current = 0.05;
slide_proportion_per_frame_min = 0.03;
slide_proportion_per_frame_max = 0.05;
slide_proportion_increase_per_frame = 0.0008;

slide_state = slide_state_sliding_in;

path_count = 0;
paths = -1;

complete = false;
off_screen = true;
paused = false;

active = true;