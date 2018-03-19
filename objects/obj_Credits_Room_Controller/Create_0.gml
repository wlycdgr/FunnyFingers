/// @description Init
//current_screen = 0;

//// FIRST SCREEN STUFF
//var first_screen_texts = [
//	"FUNNY FINGERS",
	
//	"A SIMPLE GAME",
//	"FOR 2 TO 10 FINGERS",
	
//	"DESIGN AND CODE BY",
//	"ILYA ZAREMBSKY",
	
//	"SPRITES AND SOUNDS BY",
//	"MARLEY HALL"
//];

//var first_screen_tweaks = [
//	[0.12, 0.021, 0.025, 90, 0], // FUNNY FINGERS
	
//	[0.03, 0.003, 0.02, 0, 0], // A SIMPLE GAME
//	[0.03, 0.003, 0.02, 0, 0], // FOR 2 TO 10 FINGERS
	
//	[0.03, 0.001, 0.01, 0, 0], // DESIGN AND CODE BY
//	[0.04, 0.007, 0.01, 0, 0], // ILYA ZAREMBSKY
	
//	[0.03, 0.001, 0.01, 0, 0], // SPRITES AND SOUNDS BY
//	[0.04, 0.007, 0.01, 0, 0] // MARLEY HALL
//];
	
//first_screen_string_y_positions = [
//	0.1 * window_height, // FUNNY FINGERS
	
//	0.32 * window_height, // A SIMPLE GAME
//	0.385 * window_height, // FOR 2 TO 10 FINGERS
	
//	0.566 * window_height, // DESIGN AND CODE BY
//	0.63 * window_height, // ILYA ZAREMBSKY
	
//	0.775 * window_height, // SPRITES AND SOUNDS BY
//	0.84 * window_height // MARLEY HALL
//];

//var first_screen_slide_directions = [
//	slide_right, // FUNNY FINGERS
	
//	slide_left, // A SIMPLE GAME
//	slide_left, // FOR 2 TO 10 FINGERS
	
//	slide_right, // DESIGN AND CODE BY
//	slide_left, // ILYA ZAREMBSKY
	
//	slide_right, // SPRITES AND SOUNDS BY
//	slide_left // MARLEY HALL
//];

//first_screen_strings_len = array_length_1d(first_screen_texts);

//first_screen_strings_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);

//var first_screen_string = 0;
//for (var i = 0; i < first_screen_strings_len; i++) {
//	first_screen_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	
//	scr_Splitsfont_Set_Text(first_screen_string, first_screen_texts[i]);
//	scr_Splitsfont_Set_Tweaks(first_screen_string, first_screen_tweaks[i]);
	
//	first_screen_string_x_paths[i] = scr_SlideTween_Add_Default_Path(
//		first_screen_strings_tween,
//		first_screen_string,
//		first_screen_slide_directions[i]
//	);
	
//	first_screen_strings[i] = first_screen_string;
//}

// END FIRST SCREEN STUFF


// SECOND SCREEN STUFF
screen_texts[1, 0] = "SPECIAL THANKS:";
screen_texts[1, 1] = "SERGE ZAREMBSKY";
screen_texts[1, 2] = "NATALIE VAYKUS ZAREMBSKY";
screen_texts[1, 3] = "ERIC ZIMMERMAN";
screen_texts[1, 4] = "DAN TOROP";
screen_texts[1, 5] = "CHARLES PRATT";
screen_texts[1, 6] = "FRANK LANTZ";
screen_texts[1, 7] = "BENNETT FODDY";
screen_texts[1, 8] = "MARK ZUCKERBERG";
screen_texts[1, 9] = "RAY RAYLIB SAN";

screen_tweaks[1, 0] = [0.03, 0.001, 0.01, 0, 0]; // SPECIAL THANKS:
screen_tweaks[1, 1] = [0.04, 0.007, 0.01, 0, 30]; // SERGE ZAREMBSKY
screen_tweaks[1, 2] = [0.04, 0.007, 0.01, 0, -30]; // NATALIE VAYKUS ZAREMBSKY
screen_tweaks[1, 3] = [0.04, 0.007, 0.01, 0, 30]; // ERIC ZIMMERMAN
screen_tweaks[1, 4] = [0.04, 0.007, 0.01, 0, -30]; // DAN TOROP
screen_tweaks[1, 5] = [0.04, 0.007, 0.01, 0, 30]; // CHARLES PRATT
screen_tweaks[1, 6] = [0.04, 0.007, 0.01, 0, -30]; // FRANK LANTZ
screen_tweaks[1, 7] = [0.04, 0.007, 0.01, 0, 30]; // BENNETT FODDY
screen_tweaks[1, 8] = [0.04, 0.007, 0.01, 0, 0]; // MARK ZUCKERBERG
screen_tweaks[1, 9] = [0.04, 0.007, 0.01, 0, 30]; // RAY RAYLIB SAN	

screen_string_y_positions[1, 0] = 0.1 * window_height; // SPECIAL THANKS:
screen_string_y_positions[1, 1] = 0.2 * window_height; // SERGE ZAREMBSKY
screen_string_y_positions[1, 2] = 0.28 * window_height; // NATALIE VAYKUS ZAREMBSKY
screen_string_y_positions[1, 3] = 0.36 * window_height; // ERIC ZIMMERMAN
screen_string_y_positions[1, 4] = 0.44 * window_height; // DAN TOROP
screen_string_y_positions[1, 5] = 0.52 * window_height; // CHARLES PRATT
screen_string_y_positions[1, 6] = 0.60 * window_height; // FRANK LANTZ
screen_string_y_positions[1, 7] = 0.68 * window_height; // BENNETT FODDY
screen_string_y_positions[1, 8] = 0.76 * window_height; // MARK ZUCKERBERG
screen_string_y_positions[1, 9] = 0.84 * window_height; // RAY RAYLIB SAN

screen_slide_directions[1, 0] = slide_right; // SPECIAL THANKS
screen_slide_directions[1, 1] = slide_left; // SERGE ZAREMBSKY
screen_slide_directions[1, 2] = slide_left; // NATALIE VAYKUS ZAREMBSKY
screen_slide_directions[1, 3] = slide_right; // ERIC ZIMMERMAN
screen_slide_directions[1, 4] = slide_left; // DAN TOROP
screen_slide_directions[1, 5] = slide_right; // CHARLES PRATT
screen_slide_directions[1, 6] = slide_left; // FRANK LANTZ
screen_slide_directions[1, 7] = slide_right; // BENNETT FODDY
screen_slide_directions[1, 8] = slide_left; // MARK ZUCKERBERG
screen_slide_directions[1, 9] = slide_right; // RAY RAYLIB SAN

screen_strings_lengths[1] = array_length_2d(screen_texts, 1);

screen_string_tweens[1] = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);

var screen_string = 0;
var screen_count = 2;
for (var i = 1; i < screen_count; i++) {
	if (1 != i) continue;
		
	for (var j = 0; j < screen_strings_lengths[i]; j++) {
		screen_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
		
		scr_Splitsfont_Set_Text(screen_string, screen_texts[i, j]);
		scr_Splitsfont_Set_Tweaks(screen_string, screen_tweaks[i, j]);
		
		screen_string_x_paths[i, j] = scr_SlideTween_Add_Default_Path(
			screen_string_tweens[i],
			screen_string,
			screen_slide_directions[i, j]
		);
		
		screen_strings[i, j] = screen_string;
	}
}


//second_screen_strings_tween.active = false;

//sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
//var second_screen_string = 0;
//for (var i = 0; i < second_screen_texts_len; i++) {
//	second_screen_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//	scr_Splitsfont_Set_Text(second_screen_string, second_screen_texts[i]);
//	scr_Splitsfont_Tweaker_Add_String(sf_tweaker, second_screen_string);
//}






//funny_fingers = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//scr_Splitsfont_Set_Text(funny_fingers, "FUNNY FINGERS");

//funny_fingers_y = 100;

//backer_names_and_size_bonuses = [
//	["SHOSHANA KESSOCK", 3],
//	["DEREK HUYNH", 0],
//	["JUSTIN KAZMARK", 0],
//	["NEIL QUILLEN", 0],
//	["BRAD DEVLIN", 0],
//	["GEORGE VOINQUEL", 1],
//	["MIKKO LILJEQVIST", 0],
//	["ADAM EL ARABY", 0],
//	["COTTC CID", 0],
//	["WARREN BLYTH", 0],
//	["DAVID RUSAK", 7],
//	["JENNIFER MCMURRAY", 14],
//	["OLGA ANDREYEVA", 0],
//	["NEIL SVERI", 0],
//	["NOBODY", 0],
//	["PERMAFRY_42", 0], // TODO ADD _ TO SPLITSFONT
//	["JORDAN TOWNEND!",	0], // TODO ADD ! TO SPLITSFONT
//	["TAYLOR MOORE", 0],
//	["GEIR", 0],
//	["ALEXANDRA COX", 0],
//	["JOHN LONER", 0],
//	["DAVID OR", 0],
//	["STEVEN BANAS", 1],
//	["DAN BENNETT", 0],
//	["JAY DESSI", 0],
//	["YUJI KOSUGI", 0],
//	["CAM", 0],
//	["ROCHA", 0],
//	["TOMMY WALTON", 1],
//	["GRADDY462", 0],
//	["CRAIG MILLETT", 0],
//	["SHAY PIERCE", 25],
//	["ANTHONY PRESTIA", 0],
//	["BRYCE DUZAN",	0],
//	["SIX A", 1],
//	["SCOTT NICHOLSON", 0],
//	["MIKE WALKER", 0],
//	["NOAH SCHNOLL", 4.3],
//	["WHITERABBIT-UK", 0], // TODO ADD - TO SPLITSFONT
//	["RUDD ZWOLINSKI", 0],
//	["ALEXANDER BEVIER", 0],
//	["RUKESH PATEL", 0],
//	["DIAN YANG GOH", 1],
//	["CAM LEWIS", 0],
//	["TREVOR", 0],
//	["PARK SE YONG", 0],
//	["ALEX", 0],
//	["JAMESAC68", 0],
//	["THISISKYN", 4],
//	["JACOB HAPNER", 0],
//	["CHRISTOPHER CAMDEN DERRICK", 0],
//	["MAX JUCHHEIM", 0],
//	["QWOP BEAR", 19],
//	["BRIAN S. CHUNG", 14], // TODO ADD . TO SPLITSFONT
//	["TREY DUPLANTIS", 4],
//	["DAMIR ARH", 0],
//	["JONATHAN MOORMANN", 0],
//	["JOSH RAAB", 4],
//	["TREVIN HIEBERT", 0],
//	["WILLIAM ZACK WOOD", 0],
//	["QUENTIN GOLAY", 0],
//	["TIMOTHY", 0],
//	["REYNALDO VARGAS", 4],
//	["ROBERT MEYER", 4],
//	["MARKUS MERGARD", 0],
//	["MATTHEW CHEN", 0],
//	["STEPHANIE MURFIN", 0],
//	["SARAH NORTHWAY", 8],
//	["DIEGO E. GARCIA", 4],
//	["BULL", 4],
//	["GORAN", 0],
//	["CARSTEN BERG", 0],
//	["CHEN SHIN-JIH", 0],
//	["YAIR SILBERMINTZ", 0],
//	["GIOVANNI J.", 0],
//	["COLIN SNYDER", 8],
//	["CORY BIRDSONG", 0],
//	["GAN YE HERN", 0],
//	["EMPTYGROWS", 0],
//	["EMPTY FORTRESS", 1],
//	["CINDY AU", 0],
//	["SEAN DUNCAN", 0],
//	["RON HAKIM", 8],
//	["JOSHUA WOODBRIDGE", 0],
//	["JESS HASKINS", 0],
//	["JOHN HERGENROEDER", 0],
//	["WYATT", 0],
//	["CAROLINE SINDERS", 0],
//	["PAUL HUGHES", 10],
//	["LEDLIE LORING", 5],
//	["ADAM T", 0.01],
//	["LUKAS M", 0],
//	["JEREMY DOUGLASS", 0],
//	["FOEHAMNER", 0],
//	["JERED HEESCHEN", 0],
//	["ADAM C. HARTLING", 0],
//	["GENTLEMANGIRAFFE", 0],
//	["MATT KIMMEL", 0],
//	["RICHARD HAYDOCK", 0],
//	["GWYNNA FORGHAM-THRIFT", 10],
//	["ROSS WILLIAMS", 0],
//	["CHRIS", 0],
//	["LACHLAN BERRY", 0],
//	["JAKE HUHMAN", 0],
//	["JASON WALTERS", 0],
//	["MICHAEL VOGEL", 0],
//	["ASH WAKEMAN", 0],
//	["JOHN HAMLET BUJALSKI", 20],
//	["ADELLE LIN", 0],
//	["EDDY BOXERMAN", 0],
//	["JOSEPH A PARKER", 0],
//	["WAIWHA", 0],
//	["JOHANNES WARN", 5], // TODO ADD Ä TO SPLITSFONT
//	["ANDREI MARKS", 0],
//	["WARRIOR BOB", 9],
//	["MAXIM KOLBOWSKI-FRAMPTON", 10],
//	["DANIEL MCKLEINFELD", 0],
//	["VANESSA M. BRANCO", 5],
//	["SCOTT ANDERSON", 0],
//	["CHRISTOPHER HART", 0],
//	["SETH ROSEN", 0],
//	["JESPER JUUL", 0],
//	["JESSE BURSTYN", 0],
//	["BEN JOHNSON", 0],
//	["ADNAN AGHA", 0],
//	["GJ", 0],
//	["NICOLE NIX ZELEK", 0],
//	["SORTASOFT LLC", 0.01],
//	["NICOLE HE", 0],
//	["SMASHWORX", 0],
//	["SIMON FERRARI", 0],
//	["ATLAS CHEN", 15],
//	["PETER VIGEANT", 0],
//	["DAVID WALLIN", 0],
//	["NOLAN FILTER", 0],
//	["ANDY WALLACE", 0],
//	["CHARLES J PRATT", 0],
//	["JONAH WALLERSTEIN", 0],
//	["JOSHUA CONNER", 0],
//	["DYLAN MCKENZIE", 10],
//	["FRED BENENSON", 0],
//	["TONI PIZZA", 0],
//	["ALEX THOMSON", 0],
//	["STU GOLLAN", 0],
//	["ELYSE MARIE", 0],
//	["RALABATE", 0],
//	["HELENE MCBRIDE", 0],
//	["ALYSSA MENES", 0],
//	["SCOTT PRICE", 0],
//	["JASON SCHOENFELD", 0],
//	["MARIO VON R", 0],
//	["GREGORY GREFENSTETTE", 0],
//	["VIKRAM SUBRAMANIAN", 0],
//	["KEVIN CANCIENNE", 0],
//	["THERESA PAK", 0],
//	["JASON J BUSH", 0],
//	["LIRON LERMAN", 0],
//	["VANESSA BRICENO", 75],
//	["JACK ODELL", 0],
//	["SIG GUNNARSSON", 0],
//	["WINNIE SONG", 0],
//	["MIGUEL SICART", 0],
//	["BROOKS GIRMAN", 0],
//	["SAM FRANK", 0],
//	["HOWARD RIGBERG", 0],
//	["CHRIS DUGAN", 0],
//	["ANDY NEALEN", 0],
//	["AVERY BROOKS", 0],
//	["CHRIS KURUC", 25],
//	["NOAH", 3.5],
//	["KEVIN HARPER", 0],
//	["GREGORY ASTRAKHAN", 0],
//	["JAMES STUART", 0],
//	["FRANZISKA ZEINER", 0],
//	["NICK ZHANG", 0],
//	["BENNETT FODDY", 0],
//	["MISHA FAVOROV", 0],
//	["MARJORIE SCHILLO", 0],
//	["NAOMI CLARK", 10],
//	["STEPHEN LAWRENCE", 0],
//	["JOHN MCMULLAN", 0],
//	["ZEKE VIRANT", 0],
//	["AMANI NASEEM", 0],
//	["CLARA FERNANDEZ", 0],
//	["DAN TOROP", 0],
//	["PETER SMITH", 0],
//	["GREG BORENSTEIN", 0],
//	["DAVE R", 0],
//	["JOHN SHARP", 0],
//	["FLYCLOPS", 0],
//	["CHRIS WIDGET DIMAURO", 0],
//	["CHARLIE GROVES", 1],
//	["MICHAEL P. CONSOLI", 1],
//	["ROBERT S. DIONNE", 0],
//	["JONATHAN ZUNGRE", 5],
//	["PIERRE DEPAZ", 0],
//	["CHRIS COYNE", 0],
//	["ERIC ZIMMERMAN", 0],
//	["GENNADY", 8],
//	["FRANK LANTZ", 0],
//	["ZACH GAGE", 0],
//	["BEN MORRIS", 0],
//	["AARON ISAKSEN", 0],
//	["SERGE", 9650],
//	["PETER", 5650],
//	["JUST A FAN", 500],
//	["REBECCA V", 50],
//	["AARON KEETH", 10],
//	["ZENA HENKIN", 100],
//	["VECTORPARK", 100]
//];

//backer_count = array_length_1d(backer_names_and_size_bonuses);
//var backer_string = -1;
//var backer_infos = -1;

//for (var i = 0; i < backer_count; i++) {
//	backer_infos = backer_names_and_size_bonuses[i];
	
//	backer_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	
//	scr_Splitsfont_Set_Text(backer_string, backer_infos[0]);
//	scr_Splitsfont_Set_Weight(backer_string, 0.002);
//	scr_Splitsfont_Set_Size(backer_string, 0.02);
	
//	backer_string_x_positions[i] = 
//		window_x_center - 
//		(scr_Splitsfont_Get_Width(backer_string) / 2);
	
//	backer_string_y_offsets[i] = i * (0.075 * window_height);
	
//	backer_strings[i] = backer_string;
	
//	backer_bonuses[i] = backer_infos[1] * 10;
//}


//var backer_tweens_y_top = 0.2 * window_height;
//var backer_tweens_slot_height = 0.05 * window_height;
//var backer_tween = 0;
//var backer_tween_direction = choose(slide_left, slide_right);
//for (var i = 0; i < 15; i++) {
//	backer_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
//	backer_tween.close_enough *= 0.05;
	
//	backer_tween_strings[i] = backer_strings[i];
//	backer_tween_x_paths[i] = 
//		scr_SlideTween_Add_Default_Path(backer_tween, backer_strings[i], backer_tween_direction);
//	backer_tweens[i] = backer_tween;
//	backer_tween_y_positions[i] = backer_tweens_y_top + backer_tweens_slot_height * i;
//	backer_tween_pauses[i] = backer_bonuses[i];
	
//	if (slide_left == backer_tween_direction) {
//		backer_tween_direction = slide_right;
//	}
//	else {
//		backer_tween_direction = slide_left;
//	}
//}

//backer_tween_strings_count = array_length_1d(backer_tween_strings);
//backer_string_index = 15;