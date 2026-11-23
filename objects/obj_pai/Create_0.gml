randomise();

sprite = global.spriteObj;
alfa = 1;
rotacao = random_range(0,180);
cor = c_white;

coletado = 0;

spriteW = sprite_get_width(sprite);
xOrig = room_width + (spriteW / 2) + 20;

scroll = xOrig;
x = xOrig;
draw_y = 0;

constante = 0;

tipo = 0;
valor = 0;

coletaEfeito = function(_efeito){
	
	switch(_efeito){
		case(0):
			repeat(7){
				var _randomX = random_range(-50, 50);
				var _randomY = random_range(-50, 50);
				instance_create_layer(x+_randomX, y+_randomY, "Obstaculo", obj_coleta0);	
			}
		break;
		case(1):
			repeat(7){
				var _randomX = random_range(-50, 50);
				var _randomY = random_range(-50, 50);
				instance_create_layer(x+_randomX, y+_randomY, "Obstaculo", obj_coleta1);	
			}
		break;
		case(2):
			repeat(7){
				var _randomX = random_range(-50, 50);
				var _randomY = random_range(-50, 50);
				instance_create_layer(x+_randomX, y+_randomY, "Obstaculo", obj_coleta2);	
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
								repeat(3){
									coletaEfeito(0);	
								}
							
							}else 
							if(obj_player.vida >0 and !obj_player.invencivel){
						
								obj_player.vida -= valor;
								obj_player.invencivel = 1;
								obj_player.dano = 1;
								obj_player.particulasPlayer(0);
					
							}
			
					break;
					case(1):
			
							if(obj_player.vida <= 100){
							
								if(obj_player.vida + valor >= 100){
									obj_player.vida = 100;	
								
									if(obj_player.PowerUpON){
								
										obj_player.moedas += 10;
								
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
							coletaEfeito(0);
			
					break;
					case(2):
		
							if(obj_player.PowerUpON){
								
								obj_player.moedas += 20;
								
							}else
		
							if(obj_player.vida > 0 and !obj_player.invencivel){
								obj_player.vida -= valor;
							
							}
							coletaEfeito(2);
			
					break;
					case(3):

					
							obj_player.moedas++;
							coletaEfeito(0);
						
			
					break;
					case(4):
			
							obj_player.PowerUpON = 1;
							coletaEfeito(1);
						//decidir depois o que vai fazer aqui (mas vai ter mais alem desses)
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