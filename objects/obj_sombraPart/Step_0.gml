alfa = lerp(alfa, 0, alfaDecay);
yScale = lerp(yScale, 0, yDecay);

if(alfa<.05){
	instance_destroy(id);	
}