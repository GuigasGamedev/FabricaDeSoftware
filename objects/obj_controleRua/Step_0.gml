scroll += global.velRua;	

//Rua
if(scroll >= spriteW[0]){	//se posicao maior que width da sprite
   scroll -= spriteW[0];		//posicao menos width
}

if(!global.gameOver){
	aleatorizador();
}else{
	gameover();	
}
show_debug_message(global.velRua);