//defnindo parametros
sprite = global.fase1Spr[0];
spriteW = sprite_get_width(sprite);
spriteH = sprite_get_height(sprite);

yOrig = room_height - (spriteH/2);

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
