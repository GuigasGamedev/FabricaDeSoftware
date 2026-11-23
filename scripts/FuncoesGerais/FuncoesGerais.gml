function criaRoom(_vetorFase, _vetorSprites){
	
	global.velRua = _vetorFase[0];
	global.velIncrease = _vetorFase[1];

	//A aleatoriedade funciona da seguinte maneira:

	//nivel de dificuldade determina a chance de coisas boas ou ruins acontecerem
	global.dif = _vetorFase[2];

	//intervalo de frames que o jogo calcula se algo acontece ou nao
	global.randTimer = _vetorFase[3];
	global.timerAtual = global.randTimer;

	//quantidade que o tempo deve diminuir quando um ciclo acabar
	global.timerDecay = _vetorFase[4];

	//quantidade de checagens que um ciclo deve ter
	global.timerCicle = _vetorFase[5];
	global.cicleAtual = global.timerCicle;
	
	global.spriteRua = _vetorSprites[0];
	global.spriteObsta = _vetorSprites[1];

}

//aleatoriza e retorna uma lane aleatoria
function geraLane(){

	var _index = irandom_range(0,2);
	return _index;
	
}

function screen_shake(_forca) {
    with (obj_screenShake) {
        shake = max(shake, _forca); // não reduz um tremor mais forte que já esteja rodando
    }
}

function transicao(_room, _escolha){

	global.roomDest = _room;
	
	if(_escolha){
		if(!instance_exists(Transicao_obj)){
						
			instance_create_layer(0, 0, "Transicao", Transicao_obj);
						
		}
	}else{
		room_goto(global.roomDest);	
	}
}

function funcoesTexto(_fonte, _cor, _alinhamentoV, _alinhamentoH){

	draw_set_font(_fonte);
	draw_set_colour(_cor);
	draw_set_valign(_alinhamentoV);
	draw_set_halign(_alinhamentoH);

}

function zeraTexto(){

	draw_set_font(-1);
	draw_set_colour(-1);
	draw_set_valign(-1);
	draw_set_halign(-1);
	
}