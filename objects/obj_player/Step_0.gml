if(global.inicioJogo){
	iniciaJogo();	
}else if(!global.gameOver){
	controle();
	checaInvencivel();
	powerUp();
}

xscale = lerp(xscale, xscaleOrig, .2);
yscale = lerp(yscale, yscaleOrig, .2);

checaGameover();