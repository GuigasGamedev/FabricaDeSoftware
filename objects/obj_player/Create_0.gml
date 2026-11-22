vidaInicial = 100;
vida = vidaInicial;

//index da posicao
indexP = 1

//posicoes originais
xOrig = 300;
yOrig = global.posicoesY[indexP];

x = 0 - sprite_width/2;
inicioTimer = 80;

y = yOrig;
velTrans = .2;
xscale = 1;
yscale = 1;
alfa = 1;

moedas = 0;

invencivelPU = 0;
PUTimermax = 10*60;
PUTimer = 0;
PowerUpON = 0;
invencivel = 0;
dano = 0;
iframe = 120;
iframeCount = iframe;
fade = 1;
fadeVel = .1;

iniciaJogo = function(){

	if(inicioTimer>=0){
		inicioTimer--;
	}
	if(inicioTimer<=0){
		x = lerp(x, xOrig, .1);
		if((xOrig-x) < .2){
			x = xOrig;
			global.inicioJogo = 0;
		}
	}
	
}

controle = function(){

	var _cima = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
	var _baixo = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);
	
	if(_baixo){
		if( !((indexP - 1) < 0) ){
			indexP--;	
		}
	}
	if(_cima){
		if( !((indexP + 1) > 2) ){
			indexP++;	
		}
	}
	
	y = lerp(y, global.posicoesY[indexP], velTrans);
	
}

checaInvencivel = function(){

	if(invencivel and dano){
		
		if(iframeCount>0){
			
			iframeCount--;	
			
			if(fade){
			
				if(alfa>0){
					alfa-=fadeVel;
					if(alfa <= 0){
						fade = 0;	
					}
				}
			
			}else if(!fade){
				if(alfa<1){
					alfa+=fadeVel;
					if(alfa>=1){
						fade = 1;
					}
				}
			}
		
		}else{
		
			invencivel=0;
			dano=0;
			fade = 1;
			alfa = 1;
			iframeCount = iframe;
		
		}
	
	}
	
}
	
powerUp = function(){
	
	if(PowerUpON){
		
		if(!invencivelPU){
			invencivelPU = 1;
			PUTimer = PUTimermax;
		}else{
		
			if(PUTimer>0){
				PUTimer--;
				if(!PUTimer){
					PUTimer = 0;
					invencivelPU = 0;
					PowerUpON = 0;
				}
			}
			
		}
	
	}
	
}
	
checaGameover = function(){

	if(vida <= 0){
		global.gameOver = 1;
	}
	
}