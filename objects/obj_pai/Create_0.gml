randomise();

sprite = global.spriteObj;
alfa = 1;

spriteW = sprite_get_width(sprite);
xOrig = room_width + (spriteW / 2) + 20;

scroll = xOrig;
x = xOrig;
draw_y = 0;

//show_debug_message("criei");

tipo = 0;
valor = 0;

checaColisao = function(){
	
	if(instance_exists(obj_player)){

		if(instance_place(x, y, obj_player)){
	
	
		if(!global.gameOver){
				switch(tipo){
		
					case(0):
				
							if(obj_player.PowerUpON){
							
								obj_player.moedas += 100;
								instance_destroy(id);
							
							}else 
							if(obj_player.vida >0 and !obj_player.invencivel){
						
								obj_player.vida -= valor;
								obj_player.invencivel = 1;
								obj_player.dano = 1;
					
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
							instance_destroy(id);
			
					break;
					case(2):
		
							if(obj_player.PowerUpON){
								
								obj_player.moedas += 20;
								instance_destroy(id);
								
							}else
		
							if(obj_player.vida > 0 and !obj_player.invencivel){
								obj_player.vida -= valor;
							
							}
							instance_destroy(id);	
			
					break;
					case(3):

					
							obj_player.moedas++;
							instance_destroy(id);
						
			
					break;
					case(4):
			
							obj_player.PowerUpON = 1;
							instance_destroy(id);
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