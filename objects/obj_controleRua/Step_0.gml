scroll += global.velRua;	

if(scroll >= spriteW - (spriteW/2)){	//se posicao maior que width da sprite
   scroll -= spriteW;		//posicao menos width
}

if(!global.gameOver){
	aleatorizador();
}else{
	gameover();	
}
//show_debug_message(global.velRua);