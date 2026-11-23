var _w = display_get_gui_width();
var _h = display_get_gui_height();

funcoesTexto(fnt_fonteMoedas,c_yellow,fa_middle,fa_center);
draw_text_transformed(_w / 2, _h * 0.25, "FIM DE JOGO", fimScale, fimScale, 0);
draw_set_colour(c_white)
draw_text(_w / 2, _h * 0.45, "Pontuação: " + string(floor(global.pontuacao)));
draw_text(_w / 2, _h * 0.55, "Recorde: " + string(floor(global.highscore)));

if (global.novo_recorde) {
    draw_set_color(c_yellow);
    draw_text(_w / 2, _h * 0.65, "NOVO RECORDE!");
    draw_set_color(c_white);
}
zeraTexto();

#region Botoes

	//x e y iniciais dos textos
	var _x1			= 100;
	var _y1			= 580;
	
	//variaves para desnhar as opções
	var _fonteMenu			= fnt_fonteMenor;
	var _corMenu			= c_white;
	var _corSecund			= c_white;
	var _corSelec			= c_red;
	var _corSelecSecund		= c_maroon;
	var _alinhamentoVMenu	= fa_middle;
	var _alinhamentoHMenu	= fa_left;
	var _alinhamentoHTitulo	= fa_middle;
	
	//distancia entre cada opção
	var _marg		= 1000;
	
	//coordenadas do mouse
	var _mouseX		= device_mouse_x_to_gui(0);
	var _mouseY		= device_mouse_y_to_gui(0);
	
	//valor do efeito Stretch para x e y
	var _xScaVal	= 1.5;
	var _yScaVal	= 0.5;
	
	//velocidade do efeito Stretch
	var _vellerp	= 0.3;

	//definindo as configurações de texto
	funcoesTexto(_fonteMenu, _corMenu, fa_middle, fa_left);
	
	
	//for para escrever cada opção
	for(var _i = 0; _i < n_opcoes; _i++){
		
		//pegando as medidas de texto de cada opção
		var _stringH	= string_height(opcoes[_i]);
		var _stringW	= string_width(opcoes[_i]);
		
		//checando colisao com o mouse em cada opção
		var _contato = point_in_rectangle(_mouseX, _mouseY, _x1 + (_marg * _i), _y1 - (_stringH/2), _x1 + (_marg * _i) + _stringW, _y1 + (_stringH/2));
		
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
			draw_text_transformed_colour(_x1  + (_marg * _i), _y1, opcoes[_i], xStretch, yStretch, 0, _corSelec, _corSelec, _corSelecSecund, _corSelecSecund, 1);
			
			//checando o botao esquerdo do mouse para selecionar uma opcao
			if(mouse_check_button_pressed(mb_left)){
				switch(index){
					case 0:	//Jogar Novamente
	
						var _transic = instance_create_layer(x, y, "Transicao", Transicao_obj);	
						global.roomDest = Jogo;
					
					break;
					case 1:	//Menu
					
						var _transic = instance_create_layer(x, y, "Transicao", Transicao_obj);	
						global.roomDest = Menu;
					
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
			draw_text_transformed_colour(_x1+ (_marg * _i), _y1 , opcoes[_i], 1, 1, 0, _corMenu, _corMenu, _corSecund, _corSecund, 1);
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

#endregion

zeraTexto();