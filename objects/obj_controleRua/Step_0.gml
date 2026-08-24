scroll += global.velRua;	

if(scroll >= spriteW - (spriteW/2)){	//se posicao maior que width da sprite
    scroll -= spriteW;		//posicao menos width
}

//Substituir por rng
if(keyboard_check_pressed(ord("I"))){
	criaObjeto(0);
}
if(keyboard_check_pressed(ord("O"))){
	criaObjeto(1);
}
if(keyboard_check_pressed(ord("P"))){
	criaObjeto(2);
}
if(keyboard_check_pressed(ord("K"))){
	criaObjeto(3);
}
if(keyboard_check_pressed(ord("L"))){
	criaObjeto(4);
}