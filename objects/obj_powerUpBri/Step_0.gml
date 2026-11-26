const++;

vspeed += sin(const)*8;

speed = lerp(speed, global.velRua, velDecay);
direction = lerp(direction, 180, .05);

alfa = lerp(alfa, 0, alfaDecay);

brilho.y = y;
brilho.x = x;
brilho.image_alpha = alfa-.5;

if(alfa<0.1){
	instance_destroy(brilho);
	instance_destroy(id);	
}