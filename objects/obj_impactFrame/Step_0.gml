alfa = lerp(alfa, 0, .09);
yScale = lerp(yScale, 0, .07);

if(alfa<0.1){
	instance_destroy(id);	
}