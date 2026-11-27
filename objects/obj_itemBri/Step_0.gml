if(!descendo){
	alfa = lerp(alfa, 1, alfaVar);
	if(alfa>1-.1){
		descendo = 1;
	}
}else{
	alfa = lerp(alfa, 0, alfaVar);
	if(alfa<.1){
		instance_destroy(id);	
	}
}