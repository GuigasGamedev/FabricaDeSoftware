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
yScale = clamp(1-_dif, .9, 1.1);

if(tipo>0){
	constante++;
	draw_y -= sin(constante/20);
	
	if(timerPart>0){
		timerPart--;
		
		if(timerPart<=0){
		
			var _difX = random_range(-20, 20);
			var _difY = random_range(-20, 20);
		
			var _particula = instance_create_layer(x+_difX, y+_difY, "Obstaculo", obj_itemBri);
			
				switch(tipo){
				
					case(1)://comida boa
						_particula.cor = c_lime;
					break;
					case(2)://comida ruim
						_particula.cor = c_red;
					break;
					case(3)://moeda
						_particula.cor = c_white;
					break;
					case(4)://power up
						_particula.cor = c_blue;
					break;
				
				}
			
			timerPart = timerPartMax;
		}
	}
}

if(global.gameOver){
	sumindoGameOver();	
}

show_debug_message(global.velRua);

if(x <= 0 - (spriteW / 2) - 20){
	//show_debug_message("fui Destruido");
	instance_destroy(id);
}