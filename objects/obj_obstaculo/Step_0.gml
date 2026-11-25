event_inherited();

if(timerAtual>=0){
	timerAtual--;
}else{
	instance_create_layer(x,y+20,"Obstaculo", obj_CaminhaoPart);
	timerAtual = timerFumaca;
}