	//x e y iniciais dos textos
	var _x1			= 100;
	var _y1			= 240;
	
	//variaves para desnhar as opções
	var _fonteMenu			= fnt_fonteMenu;
	var _corMenu			= c_white;
	var _corSecund			= c_ltgray;
	var _corSelec			= c_yellow;
	var _corSelecSecund		= c_maroon;
	var _alinhamentoVMenu	= fa_middle;
	var _alinhamentoHMenu	= fa_left;
	var _alinhamentoHTitulo	= fa_middle;
	
	//distancia entre cada opção
	var _marg		= 120;
	
	//coordenadas do mouse
	var _mouseX		= device_mouse_x_to_gui(0);
	var _mouseY		= device_mouse_y_to_gui(0);
	
	//valor do efeito Stretch para x e y
	var _xScaVal	= 1.3;
	var _yScaVal	= 0.8;
	
	//velocidade do efeito Stretch
	var _vellerp	= 0.3;
	
	var _xTit = display_get_gui_width()/2;
	var _yTit = (display_get_gui_height()/2) - 100;
	var _titText	= "Aperte qualquer botão para iniciar";
	var _titImg		= Titulo_spr;
	
if(tela_de_titulo){
	
	draw_sprite_ext(_titImg, 0, _xTit, _yTit, .5, .5, 0, c_white, alfaTitulo);
	draw_set_font(fnt_fonteMoedas);
	draw_set_halign(fa_middle);
	draw_text_transformed_colour(_xTit, _yTit + 250, _titText, .8, .8, 0, _corMenu, _corMenu, _corSecund, _corSecund, alfaTitulo);
	draw_set_font(0);
	draw_set_halign(0);
}

//checa se a tela está no menu principal
if(menuPrincipal){

	//definindo as configurações de texto
	funcoesTexto(_fonteMenu, _corMenu, fa_middle, fa_left);
	
	
	//for para escrever cada opção
	for(var _i = 0; _i < n_opcoes; _i++){
		
		//pegando as medidas de texto de cada opção
		var _stringH	= string_height(opcoes[_i]);
		var _stringW	= string_width(opcoes[_i]);
		
		//checando colisao com o mouse em cada opção
		var _contato	= point_in_rectangle(_mouseX, _mouseY, _x1, _y1 + (_marg * _i) - (_stringH/2), _x1 + _stringW, _y1 + (_marg * _i) + (_stringH/2));
		
		//se tiver contato...
		if(_contato){
			//antes de atualizar o index, inicia o efeito stretch
			if(index != _i){
				xStretch = _xScaVal;
				yStretch = _yScaVal;
			}
			//atualiza o index
			index = _i;
			
			//desenha o texto com as dimensões do stretch e cor
			draw_text_transformed_colour(_x1-5, _y1+5 + (_marg * _i), opcoes[_i], xStretch, yStretch, 0, c_black, c_black, c_black, c_black, alfaMenu);
			draw_text_transformed_colour(_x1, _y1 + (_marg * _i), opcoes[_i], xStretch, yStretch, 0, _corSelec, _corSelec, _corSelecSecund, _corSelecSecund, alfaMenu);
			
			//checando o botao esquerdo do mouse para selecionar uma opcao
			if(mouse_check_button_pressed(mb_left)){
				switch(index){
					case(0):	//Jogar
						
						desaparecendoMenu = 1;
							var _transic = instance_create_layer(x, y, "Transicao", Transicao_obj);	
							global.roomDest = Jogo;
					
					break;
					case(1):
						desaparecendoMenu = 1;
							var _transic = instance_create_layer(x, y, "Transicao", Transicao_obj);	
							global.roomDest = Configuracoes;
					break;
					case(2):	//Sair
					
						game_end();
					
					break;
					default://default
					
					break;
				}
			}
		}else{
			//perde o index para o efeito resetar quando o mouse não estiver em cima de nenhuma opção
			if(index == _i){
				index = -1;
			}
			//desenha o texto branco normalmente
			draw_text_transformed_colour(_x1-5, _y1+5 + (_marg * _i), opcoes[_i], 1, 1, 0, c_black, c_black, c_black, c_black, alfaMenu);
			draw_text_transformed_colour(_x1, _y1 + (_marg * _i), opcoes[_i], 1, 1, 0, _corMenu, _corMenu, _corSecund, _corSecund, alfaMenu);
		}
	
	}
	//zera as configurações de texto
	zeraTexto();
	
	//reseta a variavel do stretch para o valor original constantemente
	xStretch = lerp(xStretch, 1, _vellerp);
	yStretch = lerp(yStretch, 1, _vellerp);
	
	//definindo os limites do lerp
	if(xStretch < 1.01){
		xStretch = 1;	
	}
	if(yStretch > .99){
		yStretch = 1;	
	}
	
	
}