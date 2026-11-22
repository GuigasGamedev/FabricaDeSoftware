if(global.inicioJogo){
	iniciaJogo();	
}else if(!global.gameOver){
	controle();
	checaInvencivel();
	powerUp();
}

checaGameover();