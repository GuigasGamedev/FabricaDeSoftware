randomise();

sprite = global.spriteObj;
alfa = 1;
xScale = 1;
yScale = 1;

//Efeito de pulsar
freq = random_range(2,2.5);
tam = 1.3;

rotacao = random_range(0,180);
cor = c_white;

coletado = 0;

spriteW = sprite_get_width(sprite);
xOrig = room_width + (spriteW / 2) + 20;

scroll = xOrig;
x = xOrig;
draw_y = 0;

constante = 0;

timerPartMax = 20;
timerPart = timerPartMax;

tipo = 0;
valor = 0;

coletaEfeito = function(_efeito){
	
	switch(_efeito){
		case(0):
			repeat(7){
				var _randomX = random_range(-50, 50);
				var _randomY = random_range(-50, 50);
				var _part = instance_create_layer(x+_randomX, y+_randomY, "Obstaculo", obj_coleta0);	
			}
		break;
		case(1):
			repeat(7){
				var _randomX = random_range(-50, 50);
				var _randomY = random_range(-50, 50);
				var _part = instance_create_layer(x+_randomX, y+_randomY, "Obstaculo", obj_coleta0);	
				_part.image_blend = c_aqua;
			}
		break;
		case(2):
			repeat(7){
				var _randomX = random_range(-50, 50);
				var _randomY = random_range(-50, 50);
				var _part = instance_create_layer(x+_randomX, y+_randomY, "Obstaculo", obj_coleta0);	
				_part.image_blend = c_red;	
			}
		break;
	}
	coletado = 1;
	
}

checaColisao = function(){
	
	if(instance_exists(obj_player)){

		if(instance_place(x, y, obj_player)){
	
	
		if(!global.gameOver){
				switch(tipo){
		
					case(0):
				
							if(obj_player.PowerUpON){
							
								obj_player.moedas += 100;
								obj_player.caminhoesDestruidos++;
								screen_shake(7);
								instance_create_layer(x, y, "impactFrame", obj_impactFrame);
								repeat(3){
									coletaEfeito(0);	
								}
							
							}else 
							if(obj_player.vida >0 and !obj_player.invencivel){
						
								obj_player.vida -= valor;
								obj_player.invencivel = 1;
								obj_player.dano = 1;
								obj_player.particulasPlayer(0);
								obj_player.caminhoes++;
								if(global.velRua>=14){
									global.velRua -= global.velVariavel;
								}
								screen_shake(15);
					
							}
			
					break;
					case(1):
			
							if(obj_player.vida <= 100){
							
								if(obj_player.vida + valor >= 100){
									obj_player.vida = 100;	
										obj_player.moedas += 5;
								
									if(obj_player.PowerUpON){
								
										obj_player.moedas += 10;
										screen_shake(7);
										instance_create_layer(x, y, "impactFrame", obj_impactFrame);
								
									}
								
								}else{	
									obj_player.vida += valor;
								
									if(obj_player.PowerUpON){
								
										obj_player.moedas += 10;
								
									}
								
								}
							}else{
						
								obj_player.moedas += 10;
						
							}
							obj_player.cenouras++;
							coletaEfeito(0);
			
					break;
					case(2):
		
							if(obj_player.PowerUpON){
								
								obj_player.moedas += 20;
								screen_shake(7);
								instance_create_layer(x, y, "impactFrame", obj_impactFrame);
								
							}else
		
							if(obj_player.vida > 0 and !obj_player.invencivel){
								obj_player.vida -= valor;
								obj_player.chocolates++;
								if(global.velRua>=14){
									global.velRua -= global.velVariavel/2;
								}
								screen_shake(5);
							
							}
							coletaEfeito(2);
			
					break;
					case(3):

							if(obj_player.PowerUpON){
								screen_shake(7);
								instance_create_layer(x, y, "impactFrame", obj_impactFrame);	
							}
							obj_player.moedas++;
							coletaEfeito(0);
						
			
					break;
					case(4):
							obj_player.PowerUpON = 1;
							obj_player.powerupsPegos++;
							coletaEfeito(1);
					break;
		
				}
			}
		
		}
	}
	
}
	
sumindoGameOver = function(){

	alfa = lerp(alfa, 0, .03);
	
	if(alfa<=0){
		instance_destroy(id);	
	}
	
}