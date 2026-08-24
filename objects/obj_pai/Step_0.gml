scroll -= global.velRua; 
x -= global.velRua;

if(x <= 0 - (spriteW / 2) - 20){

	//show_debug_message("fui Destruido");
	instance_destroy(id);
	
}