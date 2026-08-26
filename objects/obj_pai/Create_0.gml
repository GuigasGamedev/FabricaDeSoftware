randomise();

sprite = global.spriteObj;

spriteW = sprite_get_width(sprite);
var _xOrig = room_width + (spriteW / 2) + 20;

scroll = _xOrig;
x = _xOrig;

//show_debug_message("criei");

tipo = 0;
valor = 0;

checaColisao = function(){

	if(instance_place(x, y, obj_player)){
	
		switch(tipo){
		
			case(0):
			
				if(instance_exists(obj_player)){
				
					if(obj_player.vida >0 and !obj_player.invencivel){
						
						obj_player.vida -= valor;
						obj_player.invencivel = 1;
					
					}
				
				}
			
			break;
			case(1):
			
				if(instance_exists(obj_player)){
					if(obj_player.vida <= 100){
							
						if(obj_player.vida + valor >= 100){
							obj_player.vida = 100;	
						}else{	
							obj_player.vida += valor;
						}
					}
					instance_destroy(id);
				}
			
			break;
			case(2):
			
				if(instance_exists(obj_player)){
					if(obj_player.vida > 0 and !obj_player.invencivel){
						obj_player.vida -= valor;
							
					}
					instance_destroy(id);	
				}
			
			break;
			case(3):

				if(instance_exists(obj_player)){
					
					obj_player.moedas++;
					instance_destroy(id);
						
				}
			
			break;
			case(4):
			
				//fazer nada por enquanto, vai ser power up
			
			break;
		
		}
	
	}
	
}