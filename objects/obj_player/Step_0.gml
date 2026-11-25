if(global.inicioJogo){
	iniciaJogo();	
	if(intSombra>0){
		intSombra--;
	}else{
		particulasPlayer(1);
		particulasPlayer(3);
		intSombra = intSombraMax;
	}
}else if(!global.gameOver){
	controle();
	checaInvencivel();
	powerUp();
	
	if(intSombra>0){
		intSombra--;
	}else{
		particulasPlayer(1);
		particulasPlayer(3);
		intSombra = intSombraMax;
	}
	
}

xscale = lerp(xscale, xscaleOrig, .2);
yscale = lerp(yscale, yscaleOrig, .2);

checaGameover();