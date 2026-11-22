//defnindo parametros
sprite = global.fase1Spr[0];
spriteFundo = [spr_fundo1, spr_fundo2, spr_fundo3];
spriteW = [sprite_get_width(sprite), sprite_get_width(spriteFundo[0]), sprite_get_width(spriteFundo[1]), sprite_get_width(spriteFundo[2])];
spriteH = [sprite_get_height(sprite), sprite_get_height(spriteFundo[0]), sprite_get_height(spriteFundo[1]), sprite_get_height(spriteFundo[2])];

yOrig = [room_height - (spriteH[0]/2), room_height - (spriteH[1]/2), room_height - (spriteH[2]/2), room_height - (spriteH[3]/2)];

//definnindo controles de velocidade iniciais
scroll = 0;


//controle de objetos
ciclando = 0;

aleatorizador = function(){
	
	if(ciclando){
	
		if(global.timerAtual > 0) global.timerAtual--;
		
		if(global.timerAtual <= 0){
			global.cicleAtual--;
			global.velRua += global.velIncrease;
		
			var _rng = irandom_range(0, 100);
			var _req = global.dif * global.velRua;
			
			if(_req >= 90){
				_req = 90;
			}
			
			if(_rng <= _req){
			
				//Atualizar esse valor quando adicionar mais coisas
				//fazer um gerado melhor baseado em dificuldade
				var _obj = irandom_range(0, 4);
				criaObjeto(_obj);
			
				if(global.cicleAtual <= 0){
					global.randTimer--;
					global.cicleAtual = global.timerCicle;
				
				}
			
			}
			
			ciclando = 0;
		
		}
	
	}else{
	
		global.timerAtual = global.randTimer;
		ciclando = 1;
	
	}
	
}

gameover = function(){
	
	if(global.velRua>= 0.07){
		global.velRua = lerp(global.velRua, 0, .03);
	}else{
		global.velRua = 0;	
	}	
}