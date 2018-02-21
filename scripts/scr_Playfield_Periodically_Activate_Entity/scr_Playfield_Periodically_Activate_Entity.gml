/// @param {real} generator Id of the generator

argument0.counter += 1;

if (argument0.counter >= argument0.period){
	for (i = array_length_1d(argument0.entities) - 1; i > -1; i--){
		if (argument0.entities[i].is_active) continue;
		
		argument0.entities[i].is_active = true;
		argument0.entities[i].vertical_speed = 3;
		argument0.entities[i].x = random_range(100, 1000);
		argument0.entities[i].y = 100;
		
		break;
	}
	
	argument0.counter = 0;
}