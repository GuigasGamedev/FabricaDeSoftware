function criaObjeto(_case){

	//fazer codigo para definir quais obstaculos vao surgir
	//por enquanto só a parede
	
	//funcoes teste
	switch(_case){
		case(0):
		
			global.spriteObj = global.spriteObsta;
		
			var _obs = instance_create_layer(0, 0, "Obstaculo", obj_obstaculo);
			_obs.y = global.posicoesY[geraLane()];
			_obs.draw_y = _obs.y;
			
		break;
		case(1):
		
			global.spriteObj = spr_comBoaPH;
			
			var _comBoa = instance_create_layer(0, 0, "Obstaculo", obj_comidaBoa);
			_comBoa.y = global.posicoesY[geraLane()];
			_comBoa.draw_y = _comBoa.y;
			
		break;
		case(2):
			global.spriteObj = spr_comRuimPH;
			var _comRuim = instance_create_layer(0, 0, "Obstaculo", obj_comidaRuim);
			_comRuim.y = global.posicoesY[geraLane()];
			_comRuim.draw_y = _comRuim.y;
		
		break;
		case(3):
		
			global.spriteObj = spr_moedaPH;
			
			var _moeda = instance_create_layer(0, 0, "Obstaculo", obj_moeda);
			_moeda.y = global.posicoesY[geraLane()];
			_moeda.draw_y = _moeda.y;
		
		break;
		case(4):
		
			//var _cria = irandom_range(0, 10);
			
			//if(!_cria){
				global.spriteObj = spr_powerUpPH;
			
				var _powerUp = instance_create_layer(0, 0, "Obstaculo", obj_powerUp);
				_powerUp.y = global.posicoesY[geraLane()];
				_powerUp.draw_y = _powerUp.y;
			//}
		break;
	}

}