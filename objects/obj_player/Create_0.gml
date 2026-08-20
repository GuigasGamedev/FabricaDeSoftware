vidaInicial = 100;
vida = vidaInicial;

//posição mais baixa
var _pos1 = room_height - 110;
var _pos2 = room_height - 345;
var _pos3 = room_height - 575;

//array com 3 posicoes
posicoesY = [_pos1, _pos2, _pos3];

//index da posicao
indexP = 1

//posicoes originais
xOrig = 300;
yOrig = posicoesY[indexP];

x = xOrig;
y = yOrig;



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
	y = posicoesY[indexP];
	
}