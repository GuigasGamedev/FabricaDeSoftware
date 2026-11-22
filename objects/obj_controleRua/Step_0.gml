scroll += global.velRua;	
round(scroll);

scrollF1 += global.velRua/16;
round(scrollF1);

scrollF2 -= global.velRua/10;
round(scrollF2);

scrollF3 += global.velRua/8;
round(scrollF3);


//Rua
if(scroll >= spriteW[0] - (spriteW[0]/2)){	//se posicao maior que width da sprite
   scroll -= spriteW[0];		//posicao menos width
}

//Ceu
if(scrollF1 >= spriteW[1] - (spriteW[1]/2)){	//se posicao maior que width da sprite
   scrollF1 -= spriteW[1];		//posicao menos width
}

//Nuvens
if(scrollF2<=0-(spriteW[2]/2)){
	scrollF2 = room_width+spriteW[2]/2;	
	nuvemSubmg = irandom_range(0,3);
}

//Predios
if(scrollF3 >= spriteW[3] - (spriteW[3]/2)){	//se posicao maior que width da sprite
   scrollF3 -= spriteW[3];		//posicao menos width
}


if(!global.gameOver and !global.inicioJogo){
	aleatorizador();
}else{
	gameover();	
}
/*
show_debug_message(global.velRua);
show_debug_message(scroll);
*/