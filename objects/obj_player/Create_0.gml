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

xscaleOrig = 1;
yscaleOrig = 1;

xscale = xscaleOrig;
yscale = yscaleOrig;

alfa = 1;

moedas = 0;
cenouras = 0;
chocolates = 0;
caminhoes = 0;
caminhoesDestruidos = 0;
powerupsPegos = 0;

invencivelPU = 0;
PUTimermax = 10*60;
PUTimer = 0;
PowerUpON = 0;
velSave = 0;
PUstopTimeMax = 30;
PUstopTime = PUstopTimeMax;
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
	
particulasPlayer = function(_tipo){
	switch(_tipo){
		case(0):
			repeat(10){
				var _randomX = random_range(-50, 50);
				var _randomY = random_range(-50, 50);
				instance_create_layer(x+_randomX, y+_randomY, "Obstaculo", obj_dano);	
			}
		break;	
	}
}

controle = function(){
	
	var _distX = 1.5;
	var _distY = .5;
	
	var _cima = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
	var _baixo = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);
	
	if(_baixo){
		if( !((indexP - 1) < 0) ){
			indexP--;	
			xscale = _distX;
			yscale = _distY;
		}
	}
	if(_cima){
		if( !((indexP + 1) > 2) ){
			indexP++;	
			xscale = _distX;
			yscale = _distY;
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
			obj_invencivelTP.inverterValores();
			global.spritePlayer = spr_player2;
			velSave = global.velRua;
		}else{
			
			if(PUstopTime>0){
				PUstopTime--;
				global.velRua = lerp(global.velRua, 0, .3);	
			}else{
				global.velRua = velSave+global.velPU;
			}
		
			if(PUTimer>0){
				PUTimer--;
				
				var _xOff = random_range(-100, 100);
				var _yOff = random_range(-100, 100);
				
				if(!(PUTimer mod 10)){
					instance_create_layer(x+_xOff, y+_yOff, "Player", obj_coleta1);	
				}
				
				if(!PUTimer){
					obj_invencivelTP.inverterValores();
					PUTimer = 0;
					PUstopTime = PUstopTimeMax;
					invencivelPU = 0;
					PowerUpON = 0;
					global.spritePlayer = spr_playerPH;
					global.velRua -= global.velPU;
				}
			}
			
		}
	
	}
	
}
	
checaGameover = function(){

	if(vida <= 0){
		global.gameOver = 1;
		
		global.moedas = moedas;
		global.cenouras = cenouras;
		global.chocolates = chocolates;
		global.caminhoes = caminhoes;
		global.caminhoesDestruidos = caminhoesDestruidos;
		global.powerupsPegos = powerupsPegos;
		
		global.pontuacao = calculaPontuacao();
		
		if (global.pontuacao > global.highscore) {
		    global.highscore = global.pontuacao;
		    highscore_salvar(global.highscore);
			global.novo_recorde = 1;
		}
		
	}
	
}