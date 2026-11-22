scroll += global.velRua;	
round(scroll);

//Rua
if(scroll >= spriteW[0] - (spriteW[0]/2)){	//se posicao maior que width da sprite
   scroll -= spriteW[0];		//posicao menos width
}

if(!global.gameOver){
	aleatorizador();
}else{
	gameover();	
}
show_debug_message(global.velRua);
show_debug_message(scroll);