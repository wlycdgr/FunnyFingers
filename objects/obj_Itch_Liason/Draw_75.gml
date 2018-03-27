/// @description Insert description here
// You can write your code in this editor
if steam_is_screenshot_requested() {
   var file = "FunnyFingers" + string(screenshot_number) + ".png";
   screen_save(file);
   steam_send_screenshot(file, window_width, window_height);
   screenshot_number += 1;
}