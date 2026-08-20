scroll += global.velRua;	

if(scroll >= spriteW - (spriteW/2)){	//se posicao maior que width da sprite
    scroll -= spriteW;		//posicao menos width
}

//Substituir por rng
if(keyboard_check_pressed(ord("O"))){
	criaObjeto();
}