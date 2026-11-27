const++;

vspeed += sin(const)*8;

speed = lerp(speed, global.velRua, velDecay);
direction = lerp(direction, 180, .05);

alfa = lerp(alfa, 0, alfaDecay);

if(alfa<0.1){
	instance_destroy(id);	
}