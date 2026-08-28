scroll += global.velRua;	

if(scroll >= spriteW - (spriteW/2)){	//se posicao maior que width da sprite
    scroll -= spriteW;		//posicao menos width
}

if(keyboard_check_pressed(ord("L"))){

	criaLayout(0);
	
}

aleatorizador();

//show_debug_message(global.velRua);