if(global.inicioJogo){
	iniciaJogo();	
	if(intSombra>0){
		intSombra--;
	}else{
		particulasPlayer(1);
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
		intSombra = intSombraMax;
	}
	
}

if(!image_index){
	instance_create_layer(x - 75, (y+sprite_height/2)-40, "Player", obj_skatePart);	
}

xscale = lerp(xscale, xscaleOrig, .2);
yscale = lerp(yscale, yscaleOrig, .2);

checaGameover();