if(!coletado){
	if(!tipo){
		scroll -= global.velRua + 3; 
		x -= global.velRua + 3;
	}else{
		scroll -= global.velRua; 
		x -= global.velRua;
	}
	checaColisao();
}else{

	alfa-=.1;
	if(alfa<.1){
		instance_destroy(id);	
	}
	
}

rotacao +=.5;

var _dif = sin(freq*constante/50)*tam;

xScale = clamp(1+_dif, .9, 1.1);
yScale = clamp(1-_dif, .7, 1);

if(tipo>0){
	constante++;
	draw_y -= sin(constante/20);
}

if(global.gameOver){
	sumindoGameOver();	
}

show_debug_message(global.velRua);

if(x <= 0 - (spriteW / 2) - 20){
	//show_debug_message("fui Destruido");
	instance_destroy(id);
}