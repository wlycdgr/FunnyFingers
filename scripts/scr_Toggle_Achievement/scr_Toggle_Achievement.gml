/// @param {String} steam_achievement_api_name The Steam api name of the achievement to toggle
if (steam_get_achievement(argument0)) {
	steam_clear_achievement(argument0);
}
else {
	steam_set_achievement(argument0);
}

switch(argument0) {
case "ach_0_qweiop": 
	unlocked[steam_ach_QWEIOP] = !unlocked[steam_ach_QWEIOP]; 
	break;
case "ach_1_the_dabbler": unlocked[steam_ach_The_Dabbler] = !unlocked[steam_ach_The_Dabbler]; break;
case "ach_2_the_qualifier": unlocked[steam_ach_The_Qualifier] = !unlocked[steam_ach_The_Qualifier]; break;
case "ach_3_the_up_and_comer": unlocked[steam_ach_The_Up_And_Comer] = !unlocked[steam_ach_The_Up_And_Comer]; break;
case "ach_4_fignermukcre": unlocked[steam_ach_Fignermuckre] = !unlocked[steam_ach_Fignermuckre]; break;
case "ach_5_triple_up": unlocked[steam_ach_Triple_Up] = !unlocked[steam_ach_Triple_Up]; break;
case "ach_6_best_friend": unlocked[steam_ach_Best_Friend] = !unlocked[steam_ach_Best_Friend]; break;
case "ach_7_no_pressure": unlocked[steam_ach_No_Pressure] = !unlocked[steam_ach_No_Pressure]; break;
case "ach_8_the_score_is_right": unlocked[steam_ach_The_Score_Is_Right] = !unlocked[steam_ach_The_Score_Is_Right]; break;
case "ach_9_a_longest_word": unlocked[steam_ach_A_Longest_Word] = !unlocked[steam_ach_A_Longest_Word]; break;
case "ach_10_level_99": unlocked[steam_ach_Level_99] = !unlocked[steam_ach_Level_99]; break;
}