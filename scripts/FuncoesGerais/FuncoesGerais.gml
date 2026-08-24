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