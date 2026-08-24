function criaObjeto(_case){

	//fazer codigo para definir quais obstaculos vao surgir
	//por enquanto só a parede
	
	//funcoes teste
	switch(_case){
		case(0):
		
			global.spriteObsta = spr_obstacPH;
		
			var _obs = instance_create_layer(0, 0, "Obstaculo", obj_obstaculo);
			_obs.y = global.posicoesY[geraLane()];
			
		break;
		case(1):
		
			global.spriteObsta = spr_comBoaPH;
			
			var _comBoa = instance_create_layer(0, 0, "Obstaculo", obj_comidaBoa);
			_comBoa.y = global.posicoesY[geraLane()];
			
		break;
		case(2):
		
			global.spriteObsta = spr_comRuimPH;
			
			var _comRuim = instance_create_layer(0, 0, "Obstaculo", obj_comidaRuim);
			_comRuim.y = global.posicoesY[geraLane()];
		
		break;
		case(3):
		
			global.spriteObsta = spr_powerUpPH;
			
			var _powerUp = instance_create_layer(0, 0, "Obstaculo", obj_powerUp);
			_powerUp.y = global.posicoesY[geraLane()];
		
		break;
		case(4):
		
			global.spriteObsta = spr_moedaPH;
			
			var _moeda = instance_create_layer(0, 0, "Obstaculo", obj_moeda);
			_moeda.y = global.posicoesY[geraLane()];
		
		break;
	}

	//switch case para decidir o que criar
	/*
	0 - obstaculo
	1 - comida ruim
	2 - comida boa
	3 - power up
	*/
}

function geraLane(){

	var _index = irandom_range(0,2);
	return _index;
	
}