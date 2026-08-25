vidaInicial = 100;
vida = vidaInicial;

//index da posicao
indexP = 1

//posicoes originais
xOrig = 300;
yOrig = global.posicoesY[indexP];

x = xOrig;
y = yOrig;
velTrans = .2;



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
	
	//fazer isso com lerp dps
	y = lerp(y, global.posicoesY[indexP], velTrans);
	
}

checaColisao = function(){

	if(instance_place(x, y, obj_pai)){
	
		
		//show_debug_message("Colidiu");
	}
	
}